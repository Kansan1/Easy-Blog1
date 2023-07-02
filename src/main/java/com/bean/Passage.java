package com.bean;

public class Passage {

    private Integer id;

    public String title;

    public String context;

    public Passage(){

    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getContext() {
        return context;
    }

    public void setContext(String context) {
        this.context = context;
    }

    @Override
    public String toString() {
        return "Passage{" +
                "uid=" + id +
                ", title='" + title + '\'' +
                ", context='" + context + '\'' +
                '}';
    }

    public Passage(Integer id, String title, String context) {
        this.id = id;
        this.title = title;
        this.context = context;
    }
}

