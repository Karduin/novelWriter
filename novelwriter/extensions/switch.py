"""
novelWriter – Custom Widget: Switch
===================================

File History:
Created: 2020-05-03 [0.4.5]

This file is a part of novelWriter
Copyright 2018–2024, Veronica Berglyd Olsen

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

from PyQt5.QtGui import QMouseEvent, QPainter, QPaintEvent, QResizeEvent
from PyQt5.QtCore import QEvent, QPropertyAnimation, Qt, pyqtProperty
from PyQt5.QtWidgets import QAbstractButton, QSizePolicy, QWidget

from novelwriter import CONFIG


class NSwitch(QAbstractButton):

    __slots__ = ("_xW", "_xH", "_xR", "_rB", "_rH", "_rR", "_offset")

    def __init__(self, parent: QWidget | None = None, width: int = 0, height: int = 0) -> None:
        super().__init__(parent=parent)

        self._xW = width or CONFIG.pxInt(40)
        self._xH = height or CONFIG.pxInt(20)
        self._xR = int(self._xH*0.5)
        self._rB = int(CONFIG.guiScale*2)
        self._rH = self._xH - 2*self._rB
        self._rR = self._xR - self._rB

        self.setCheckable(True)
        self.setSizePolicy(QSizePolicy.Fixed, QSizePolicy.Fixed)
        self.setFixedWidth(self._xW)
        self.setFixedHeight(self._xH)
        self._offset = self._xR

        return

    ##
    #  Properties
    ##

    @pyqtProperty(int)  # type: ignore
    def offset(self) -> int:  # type: ignore
        return self._offset

    @offset.setter  # type: ignore
    def offset(self, offset: int):
        self._offset = offset
        self.update()
        return

    ##
    #  Getters and Setters
    ##

    def setChecked(self, checked: bool) -> None:
        """Overload setChecked to also alter the offset."""
        super().setChecked(checked)
        self._offset = (self._xW - self._xR) if checked else self._xR
        return

    ##
    #  Events
    ##

    def resizeEvent(self, event: QResizeEvent) -> None:
        """Overload resize to ensure correct offset."""
        super().resizeEvent(event)
        self._offset = (self._xW - self._xR) if self.isChecked() else self._xR
        return

    def paintEvent(self, event: QPaintEvent) -> None:
        """Drawing the switch itself."""
        painter = QPainter(self)
        painter.setRenderHint(QPainter.Antialiasing, True)
        painter.setPen(Qt.NoPen)

        palette = self.palette()
        if self.isChecked():
            trackBrush = palette.highlight()
            thumbBrush = palette.highlightedText()
        else:
            trackBrush = palette.dark()
            thumbBrush = palette.light()

        if self.isEnabled():
            trackOpacity = 1.0
        else:
            trackOpacity = 0.6
            trackBrush = palette.shadow()
            thumbBrush = palette.mid()

        painter.setBrush(trackBrush)
        painter.setOpacity(trackOpacity)
        painter.drawRoundedRect(0, 0, self._xW, self._xH, self._xR, self._xR)

        painter.setBrush(thumbBrush)
        painter.drawEllipse(self._offset - self._rR, self._rB, self._rH, self._rH)

        return

    def mouseReleaseEvent(self, event: QMouseEvent) -> None:
        """Animate the switch on mouse release."""
        super().mouseReleaseEvent(event)
        if event.button() == Qt.LeftButton:
            anim = QPropertyAnimation(self, b"offset", self)
            anim.setDuration(120)
            anim.setStartValue(self._offset)
            anim.setEndValue((self._xW - self._xR) if self.isChecked() else self._xR)
            anim.start()
        return

    def enterEvent(self, event: QEvent) -> None:
        """Change the cursor when hovering the button."""
        self.setCursor(Qt.PointingHandCursor)
        super().enterEvent(event)
        return

# END Class NSwitch
