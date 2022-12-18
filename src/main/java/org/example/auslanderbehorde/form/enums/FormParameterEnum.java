package org.example.auslanderbehorde.form.enums;

public enum FormParameterEnum {

    COUNTRY("xi-sel-400", "sel-staat"),
    APPLICANT_COUNT("xi-sel-422", "personenAnzahl_normal"),
    FAMILY_STATUS("xi-sel-427", "lebnBrMitFmly"),
    TIME_SLOT("xi-sel-3", "dd_zeiten");

    private final String id;
    private final String name;

    FormParameterEnum(String id, String name) {
        this.id = id;
        this.name = name;
    }

    public String getId() {
        return id;
    }

    public String getName() {
        return name;
    }
    }