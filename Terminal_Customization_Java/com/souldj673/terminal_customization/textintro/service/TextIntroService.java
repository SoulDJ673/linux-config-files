/*
 * Copyright (C) 2018 souldj673
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>.
 */
package com.souldj673.terminal_customization.textintro.service;

import com.souldj673.terminal_customization.textintro.dao.TextIntroDAO;
import java.io.FileNotFoundException;
import java.util.List;
import java.util.Random;

/**
 *
 * @author souldj673
 */
public class TextIntroService {

    TextIntroDAO dao;

    public TextIntroService(TextIntroDAO dao) {
        this.dao = dao;
    }

    public void loadTextIntroFile() throws FileNotFoundException {
        dao.loadAllStrings();
    }

    public String getStrings() {
        return getConcatenatedString();
    }

    public List<String> getStringList() {
        return dao.getAllStrings();
    }

    public String getAString() {
        Random entropy = new Random();
        int i = entropy.nextInt(dao.getAllStrings().size());
        return dao.getAString(i);
    }

    private String getConcatenatedString() {
        List<String> allStrings = dao.getAllStrings();

        String concatString = "";
        for (String currentToken : allStrings) {
            concatString = concatString + currentToken;
        }

        return concatString;
    }
}
