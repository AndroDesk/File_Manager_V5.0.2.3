.class public final Landroidx/appcompat/app/t;
.super Ljava/lang/Object;
.source "AppLocalesStorageHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/app/t$a;,
        Landroidx/appcompat/app/t$b;
    }
.end annotation


# direct methods
.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .registers 8

    .line 1
    const-string v0, "locales"

    .line 3
    const-string v1, "AppLocalesStorageHelper"

    .line 5
    const-string v2, ""

    .line 7
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    move-result v2

    .line 11
    const-string v3, "androidx.appcompat.app.AppCompatDelegate.application_locales_record_file"

    .line 13
    if-eqz v2, :cond_12

    .line 15
    invoke-virtual {p0, v3}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    .line 18
    return-void

    .line 19
    :cond_12
    const/4 v2, 0x0

    .line 20
    :try_start_13
    invoke-virtual {p0, v3, v2}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    .line 23
    move-result-object p0
    :try_end_17
    .catch Ljava/io/FileNotFoundException; {:try_start_13 .. :try_end_17} :catch_74

    .line 24
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    .line 27
    move-result-object v2

    .line 28
    const/4 v3, 0x0

    .line 29
    :try_start_1c
    invoke-interface {v2, p0, v3}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 32
    const-string v4, "UTF-8"

    .line 34
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 36
    invoke-interface {v2, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 39
    invoke-interface {v2, v3, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 42
    const-string v4, "application_locales"

    .line 44
    invoke-interface {v2, v3, v4, p1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 47
    invoke-interface {v2, v3, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 50
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    .line 55
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 58
    const-string v2, "Storing App Locales : app-locales: "

    .line 60
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    const-string v2, " persisted successfully."

    .line 68
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    move-result-object v0

    .line 75
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_4d} :catch_55
    .catchall {:try_start_1c .. :try_end_4d} :catchall_53

    .line 78
    if-eqz p0, :cond_6d

    .line 80
    :goto_4f
    :try_start_4f
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V
    :try_end_52
    .catch Ljava/io/IOException; {:try_start_4f .. :try_end_52} :catch_6d

    .line 83
    goto :goto_6d

    .line 84
    :catchall_53
    move-exception p1

    .line 85
    goto :goto_6e

    .line 86
    :catch_55
    move-exception v0

    .line 87
    :try_start_56
    new-instance v2, Ljava/lang/StringBuilder;

    .line 89
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 92
    const-string v3, "Storing App Locales : Failed to persist app-locales: "

    .line 94
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    move-result-object p1

    .line 104
    invoke-static {v1, p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6a
    .catchall {:try_start_56 .. :try_end_6a} :catchall_53

    .line 107
    if-eqz p0, :cond_6d

    .line 109
    goto :goto_4f

    .line 110
    :catch_6d
    :cond_6d
    :goto_6d
    return-void

    .line 111
    :goto_6e
    if-eqz p0, :cond_73

    .line 113
    :try_start_70
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V
    :try_end_73
    .catch Ljava/io/IOException; {:try_start_70 .. :try_end_73} :catch_73

    .line 116
    :catch_73
    :cond_73
    throw p1

    .line 117
    :catch_74
    const/4 p0, 0x1

    .line 118
    new-array p0, p0, [Ljava/lang/Object;

    .line 120
    aput-object v3, p0, v2

    .line 122
    const-string p1, "Storing App Locales : FileNotFoundException: Cannot open file %s for writing "

    .line 124
    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 127
    move-result-object p0

    .line 128
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    return-void
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .registers 10

    .line 1
    const-string v0, "androidx.appcompat.app.AppCompatDelegate.application_locales_record_file"

    .line 3
    const-string v1, "AppLocalesStorageHelper"

    .line 5
    const-string v2, ""

    .line 7
    :try_start_6
    invoke-virtual {p0, v0}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    .line 10
    move-result-object v3
    :try_end_a
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_a} :catch_65

    .line 11
    :try_start_a
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    .line 14
    move-result-object v4

    .line 15
    const-string v5, "UTF-8"

    .line 17
    invoke-interface {v4, v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 20
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 23
    move-result v5

    .line 24
    :cond_17
    :goto_17
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 27
    move-result v6

    .line 28
    const/4 v7, 0x1

    .line 29
    if-eq v6, v7, :cond_40

    .line 31
    const/4 v7, 0x3

    .line 32
    if-ne v6, v7, :cond_27

    .line 34
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 37
    move-result v8

    .line 38
    if-le v8, v5, :cond_40

    .line 40
    :cond_27
    if-eq v6, v7, :cond_17

    .line 42
    const/4 v7, 0x4

    .line 43
    if-ne v6, v7, :cond_2d

    .line 45
    goto :goto_17

    .line 46
    :cond_2d
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 49
    move-result-object v6

    .line 50
    const-string v7, "locales"

    .line 52
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 55
    move-result v6

    .line 56
    if-eqz v6, :cond_17

    .line 58
    const/4 v5, 0x0

    .line 59
    const-string v6, "application_locales"

    .line 61
    invoke-interface {v4, v5, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 64
    move-result-object v2
    :try_end_40
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_a .. :try_end_40} :catch_45
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_40} :catch_45
    .catchall {:try_start_a .. :try_end_40} :catchall_43

    .line 65
    :cond_40
    if-eqz v3, :cond_4f

    .line 67
    goto :goto_4c

    .line 68
    :catchall_43
    move-exception p0

    .line 69
    goto :goto_5f

    .line 70
    :catch_45
    :try_start_45
    const-string v4, "Reading app Locales : Unable to parse through file :androidx.appcompat.app.AppCompatDelegate.application_locales_record_file"

    .line 72
    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4a
    .catchall {:try_start_45 .. :try_end_4a} :catchall_43

    .line 75
    if-eqz v3, :cond_4f

    .line 77
    :goto_4c
    :try_start_4c
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_4f
    .catch Ljava/io/IOException; {:try_start_4c .. :try_end_4f} :catch_4f

    .line 80
    :catch_4f
    :cond_4f
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 83
    move-result v3

    .line 84
    if-nez v3, :cond_5b

    .line 86
    const-string p0, "Reading app Locales : Locales read from file: androidx.appcompat.app.AppCompatDelegate.application_locales_record_file , appLocales: "

    .line 88
    invoke-static {p0, v2, v1}, La/a;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    goto :goto_5e

    .line 92
    :cond_5b
    invoke-virtual {p0, v0}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    .line 95
    :goto_5e
    return-object v2

    .line 96
    :goto_5f
    if-eqz v3, :cond_64

    .line 98
    :try_start_61
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_64
    .catch Ljava/io/IOException; {:try_start_61 .. :try_end_64} :catch_64

    .line 101
    :catch_64
    :cond_64
    throw p0

    .line 102
    :catch_65
    const-string p0, "Reading app Locales : Locales record file not found: androidx.appcompat.app.AppCompatDelegate.application_locales_record_file"

    .line 104
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    return-object v2
.end method
