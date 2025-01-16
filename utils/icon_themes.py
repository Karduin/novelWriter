"""
novelWriter – Icon Theme Utils
==============================

This file is a part of novelWriter
Copyright (C) 2025 Veronica Berglyd Olsen and novelWriter contributors

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful, but
WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU
General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program. If not, see <https://www.gnu.org/licenses/>.
"""
from __future__ import annotations

import argparse
import json
import subprocess
import sys

from pathlib import Path
from xml.etree import ElementTree as ET

from utils.common import ROOT_DIR

UTILS = Path(__file__).parent
ET.register_namespace("", "http://www.w3.org/2000/svg")
ICONS = [
    "alert_error",
    "alert_info",
    "alert_question",
    "alert_warn",

    "cls_archive",
    "cls_character",
    "cls_custom",
    "cls_entity",
    "cls_none",
    "cls_novel",
    "cls_object",
    "cls_plot",
    "cls_template",
    "cls_timeline",
    "cls_trash",
    "cls_world",

    "prj_folder",
    "prj_document",
    "prj_title",
    "prj_chapter",
    "prj_scene",
    "prj_note",

    "fmt_bold",
    "fmt_italic",
    "fmt_mark",
    "fmt_strike",
    "fmt_subscript",
    "fmt_superscript",
    "fmt_underline",
    "fmt_toolbar",

    "search",
    "search_cancel",
    "search_case",
    "search_loop",
    "search_preserve",
    "search_project",
    "search_regex",
    "search_replace",
    "search_word",

    "bullet-off",
    "bullet-on",
    "unfold-hide",
    "unfold-show",

    "sb_build",
    "sb_novel",
    "sb_outline",
    "sb_project",
    "sb_search",

    "add",
    "bookmarks",
    "browse",
    "build_settings",
    "cancel",
    "checked",
    "chevron_down",
    "chevron_left",
    "chevron_right",
    "chevron_up",
    "close",
    "copy",
    "document_add",
    "document",
    "edit",
    "exclude",
    "export",
    "filter",
    "fit_height",
    "fit_width",
    "folder",
    "font",
    "import",
    "language",
    "lines",
    "list",
    "margin_bottom",
    "margin_left",
    "margin_right",
    "margin_top",
    "maximise",
    "minimise",
    "more_arrow",
    "more_vertical",
    "noncheckable",
    "open",
    "panel",
    "pin",
    "project_copy",
    "quote",
    "refresh",
    "remove",
    "revert",
    "settings",
    "star",
    "stats",
    "text",
    "timer_off",
    "timer",
    "unchecked",
    "view",
]


def _loadMap(name: str) -> dict[str, str]:
    """Load a theme map file."""
    data = json.loads((UTILS / "icon_themes" / f"{name}.json").read_text(encoding="utf-8"))
    icons = {}
    for key in ICONS:
        if icon := data.get(key, ""):
            icons[key] = icon
        else:
            print(f"- Missing: {key}")
    return icons


def _fixXml(svg: ET.Element) -> str:
    """Clean up the SVG XML and add needed fields."""
    svg.set("fill", "#000000")
    svg.set("height", "128")
    svg.set("width", "128")
    return ET.tostring(svg).decode()


def _writeThemeFile(
    path: Path, name: str, author: str, license: str, icons: dict[str, ET.Element]
) -> None:
    """Write an icon theme file."""
    with open(path.with_suffix(".icons"), mode="w", encoding="utf-8") as out:
        out.write("# This file is automatically generated. Do not edit.\n\n")
        out.write("# Meta\n")
        out.write(f"meta:name    = {name}\n")
        out.write(f"meta:author  = {author}\n")
        out.write(f"meta:license = {license}\n")
        out.write("\n")
        out.write("# Icons\n")
        for key, svg in icons.items():
            out.write(f"icon:{key:<15s} = {_fixXml(svg)}\n")
        print(f"- Wrote: {len(icons)} icons")
        print(f"- Target: {path.relative_to(UTILS.parent)}")
    return


def _cloneRepo(repoPath: Path, repoUrl: str) -> None:
    """Clone or update a local repo of icons."""
    print(f"Updating: {repoUrl}")
    if not repoPath.is_dir():
        subprocess.call(["git", "clone", repoUrl, "--depth", "50"], cwd=repoPath.parent)
    else:
        subprocess.call(["git", "pull"], cwd=repoPath)
    print("")
    return


def processMaterialIcons(workDir: Path, iconsDir: Path, jobs: dict) -> None:
    """Process material icons of a given spec and write output file."""
    srcRepo = workDir / "material-design-icons"
    _cloneRepo(srcRepo, "https://github.com/google/material-design-icons.git")

    for file, job in jobs.items():
        name: str    = job["name"]
        style: str   = job["style"]
        filled: bool = job["filled"]
        weight: int  = job["weight"]

        kind = f"wght{weight}" if weight != 400 else ""
        kind += "fill1" if filled else ""

        print(f"Processing: {name}")

        icons: dict[str, ET.Element] = {}
        iconSrc = srcRepo / "symbols" / "web"
        for key, icon in _loadMap("material_symbols").items():
            if kind:
                fileName = f"{icon}_{kind}_24px.svg"
            else:
                fileName = f"{icon}_24px.svg"
            iconFile = iconSrc / icon / f"materialsymbols{style}" / fileName
            if iconFile.is_file():
                icons[key] = ET.fromstring(iconFile.read_text(encoding="utf-8"))
            else:
                print(f"Not Found: {iconFile}")

        target = iconsDir / f"{file}.icons"
        _writeThemeFile(target, name, "Google Inc", "Apache 2.0", icons)

    print("")

    return


def processFontAwesome(workDir: Path, iconsDir: Path, jobs: dict) -> None:
    """Process Font Awesome icons of a given spec and write output file."""
    srcRepo = workDir / "Font-Awesome"
    _cloneRepo(srcRepo, "https://github.com/FortAwesome/Font-Awesome.git")

    for file, job in jobs.items():
        name: str = job["name"]
        print(f"Processing: {name}")

        icons: dict[str, ET.Element] = {}
        iconSrc = srcRepo / "svgs"
        for key, value in _loadMap("font_awesome").items():
            icon, _, forced = value.partition(":")
            iconSolid = iconSrc / "solid" / f"{icon}.svg"
            iconRegular = iconSrc / "regular" / f"{icon}.svg"
            if forced == "regular":
                iconFile = iconRegular
            elif forced == "solid":
                iconFile = iconSolid
            elif iconSolid.is_file():
                iconFile = iconSolid
            elif iconRegular.is_file():
                iconFile = iconRegular
            else:
                print(f"Not Found: {icon}.svg")
                continue

            if iconFile.is_file():
                svg = ET.fromstring(iconFile.read_text(encoding="utf-8"))
                viewbox = [int(x) for x in svg.get("viewBox", "").split()]
                viewbox = [viewbox[2]//2 - 256, 0, 512, 512]
                svg.set("viewBox", " ".join(str(x) for x in viewbox))
                icons[key] = svg
            else:
                print(f"Not Found: {icon}.svg")
                continue

        target = iconsDir / f"{file}.icons"
        _writeThemeFile(target, name, "Fonticons Inc", "CC BY 4.0", icons)

    print("")

    return


def processRemix(workDir: Path, iconsDir: Path, jobs: dict) -> None:
    """Process Remix icons of a given spec and write output file."""
    srcRepo = workDir / "RemixIcon"
    _cloneRepo(srcRepo, "https://github.com/Remix-Design/RemixIcon.git")

    for file, job in jobs.items():
        name: str = job["name"]
        style = "fill" if job["filled"] else "line"

        print(f"Processing: {name}")

        icons: dict[str, ET.Element] = {}
        iconSrc = srcRepo / "icons"
        iconGroups = [x for x in iconSrc.iterdir() if x.is_dir()]
        for key, icon in _loadMap("remix").items():
            if icon.endswith(("-line", "-fill")):
                fileName = f"{icon}.svg"
            else:
                fileName = f"{icon}-{style}.svg"
            for group in iconGroups:
                iconFile = group / fileName
                if iconFile.is_file():
                    break
            else:
                fileName = f"{icon}.svg"
                for group in iconGroups:
                    iconFile = group / fileName
                    if iconFile.is_file():
                        break
                else:
                    print(f"Not Found: {fileName}")
                    continue

            icons[key] = ET.fromstring(iconFile.read_text(encoding="utf-8"))

        target = iconsDir / f"{file}.icons"
        _writeThemeFile(target, name, "Remix Icon", "Apache 2.0", icons)

    print("")

    return


def main(args: argparse.Namespace) -> None:
    """Build icon themes entry point."""
    print("")
    print("Build Icon Themes")
    print("=================")
    print("")

    workDir = Path(args.sources).absolute()
    if not workDir.is_dir():
        print(f"Source directory not found: {workDir}")
        sys.exit(1)

    iconsDir = ROOT_DIR / "novelwriter" / "assets" / "icons"

    style = args.style
    if style in ("all", "material"):
        processMaterialIcons(workDir, iconsDir, {
            "material_rounded_thin": {
                "name": "Material Symbols - Rounded Thin",
                "style": "rounded",
                "filled": False,
                "weight": 200,
            },
            "material_rounded_normal": {
                "name": "Material Symbols - Rounded Medium",
                "style": "rounded",
                "filled": False,
                "weight": 400,
            },
            "material_rounded_bold": {
                "name": "Material Symbols - Rounded Bold",
                "style": "rounded",
                "filled": False,
                "weight": 600,
            },
            "material_filled_thin": {
                "name": "Material Symbols - Filled Thin",
                "style": "rounded",
                "filled": True,
                "weight": 200,
            },
            "material_filled_normal": {
                "name": "Material Symbols - Filled Medium",
                "style": "rounded",
                "filled": True,
                "weight": 400,
            },
            "material_filled_bold": {
                "name": "Material Symbols - Filled Bold",
                "style": "rounded",
                "filled": True,
                "weight": 600,
            },
        })

    if style in ("all", "fa"):
        processFontAwesome(workDir, iconsDir, {
            "font_awesome": {
                "name": "Font Awesome 6",
            },
        })

    if style in ("all", "remix"):
        processRemix(workDir, iconsDir, {
            "remix_outline": {
                "name": "Remix Icon - Outline",
                "filled": False,
            },
            "remix_filled": {
                "name": "Remix Icon - Filled",
                "filled": True,
            },
        })

    print("Done")
    print("")

    return