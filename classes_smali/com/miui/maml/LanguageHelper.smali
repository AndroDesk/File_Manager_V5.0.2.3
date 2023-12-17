.class public Lcom/miui/maml/LanguageHelper;
.super Ljava/lang/Object;
.source "LanguageHelper.java"


# static fields
.field private static final COMPATIBLE_STRING_ROOT_TAG:Ljava/lang/String; = "strings"

.field private static final DEFAULT_STRING_FILE_PATH:Ljava/lang/String; = "strings/strings.xml"

.field private static final LOG_TAG:Ljava/lang/String; = "LanguageHelper"

.field private static final STRING_FILE_PATH:Ljava/lang/String; = "strings/strings.xml"

.field private static final STRING_ROOT_TAG:Ljava/lang/String; = "resources"

.field private static final STRING_TAG:Ljava/lang/String; = "string"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static load(Ljava/util/Locale;Lcom/miui/maml/ResourceManager;Lcom/miui/maml/data/Variables;)Z
    .registers 8

    .line 1
    const/4 v0, 0x0

    .line 2
    const-string v1, "strings/strings.xml"

    .line 4
    if-eqz p0, :cond_1c

    .line 6
    invoke-virtual {p0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    .line 9
    move-result-object v2

    .line 10
    invoke-static {v1, v2}, Lcom/miui/maml/util/Utils;->addFileNameSuffix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 13
    move-result-object v2

    .line 14
    invoke-virtual {p1, v2}, Lcom/miui/maml/ResourceManager;->resourceExists(Ljava/lang/String;)Z

    .line 17
    move-result v3

    .line 18
    if-nez v3, :cond_1d

    .line 20
    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    .line 23
    move-result-object p0

    .line 24
    invoke-static {v1, p0}, Lcom/miui/maml/util/Utils;->addFileNameSuffix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 27
    move-result-object v2

    .line 28
    goto :goto_1d

    .line 29
    :cond_1c
    move-object v2, v0

    .line 30
    :cond_1d
    :goto_1d
    invoke-virtual {p1, v2}, Lcom/miui/maml/ResourceManager;->resourceExists(Ljava/lang/String;)Z

    .line 33
    move-result p0

    .line 34
    const/4 v3, 0x0

    .line 35
    const-string v4, "LanguageHelper"

    .line 37
    if-nez p0, :cond_32

    .line 39
    invoke-virtual {p1, v1}, Lcom/miui/maml/ResourceManager;->resourceExists(Ljava/lang/String;)Z

    .line 42
    move-result p0

    .line 43
    if-nez p0, :cond_33

    .line 45
    const-string p0, "no available string resources to load."

    .line 47
    invoke-static {v4, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    return v3

    .line 51
    :cond_32
    move-object v1, v2

    .line 52
    :cond_33
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    .line 55
    move-result-object p0

    .line 56
    :try_start_37
    invoke-virtual {p0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    .line 59
    move-result-object p0

    .line 60
    invoke-virtual {p1, v1}, Lcom/miui/maml/ResourceManager;->getInputStream(Ljava/lang/String;)Ljava/io/InputStream;

    .line 63
    move-result-object v0

    .line 64
    invoke-virtual {p0, v0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    .line 67
    move-result-object p0
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_43} :catch_54
    .catchall {:try_start_37 .. :try_end_43} :catchall_52

    .line 68
    if-eqz v0, :cond_4d

    .line 70
    :try_start_45
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_48} :catch_49

    .line 73
    goto :goto_4d

    .line 74
    :catch_49
    move-exception p1

    .line 75
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 78
    :cond_4d
    :goto_4d
    invoke-static {p0, p2}, Lcom/miui/maml/LanguageHelper;->setVariables(Lorg/w3c/dom/Document;Lcom/miui/maml/data/Variables;)Z

    .line 81
    move-result p0

    .line 82
    return p0

    .line 83
    :catchall_52
    move-exception p0

    .line 84
    goto :goto_67

    .line 85
    :catch_54
    move-exception p0

    .line 86
    :try_start_55
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 89
    move-result-object p0

    .line 90
    invoke-static {v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5c
    .catchall {:try_start_55 .. :try_end_5c} :catchall_52

    .line 93
    if-eqz v0, :cond_66

    .line 95
    :try_start_5e
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_5e .. :try_end_61} :catch_62

    .line 98
    goto :goto_66

    .line 99
    :catch_62
    move-exception p0

    .line 100
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 103
    :cond_66
    :goto_66
    return v3

    .line 104
    :goto_67
    if-eqz v0, :cond_71

    .line 106
    :try_start_69
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_6c
    .catch Ljava/lang/Exception; {:try_start_69 .. :try_end_6c} :catch_6d

    .line 109
    goto :goto_71

    .line 110
    :catch_6d
    move-exception p1

    .line 111
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 114
    :cond_71
    :goto_71
    throw p0
.end method

.method private static setVariables(Lorg/w3c/dom/Document;Lcom/miui/maml/data/Variables;)Z
    .registers 9

    .line 1
    const-string v0, "resources"

    .line 3
    invoke-interface {p0, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    .line 10
    move-result v1

    .line 11
    const/4 v2, 0x1

    .line 12
    const/4 v3, 0x0

    .line 13
    if-gtz v1, :cond_1d

    .line 15
    const-string v0, "strings"

    .line 17
    invoke-interface {p0, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    .line 20
    move-result-object v0

    .line 21
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    .line 24
    move-result p0

    .line 25
    if-gtz p0, :cond_1b

    .line 27
    return v3

    .line 28
    :cond_1b
    move p0, v3

    .line 29
    goto :goto_1e

    .line 30
    :cond_1d
    move p0, v2

    .line 31
    :goto_1e
    invoke-interface {v0, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    .line 34
    move-result-object v0

    .line 35
    check-cast v0, Lorg/w3c/dom/Element;

    .line 37
    const-string v1, "string"

    .line 39
    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    .line 42
    move-result-object v0

    .line 43
    :goto_2a
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    .line 46
    move-result v1

    .line 47
    if-ge v3, v1, :cond_57

    .line 49
    invoke-interface {v0, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    .line 52
    move-result-object v1

    .line 53
    check-cast v1, Lorg/w3c/dom/Element;

    .line 55
    const-string v4, "name"

    .line 57
    invoke-interface {v1, v4}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 60
    move-result-object v4

    .line 61
    if-eqz p0, :cond_43

    .line 63
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    .line 66
    move-result-object v1

    .line 67
    goto :goto_49

    .line 68
    :cond_43
    const-string v5, "value"

    .line 70
    invoke-interface {v1, v5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 73
    move-result-object v1

    .line 74
    :goto_49
    const-string v5, "\\\\"

    .line 76
    const-string v6, ""

    .line 78
    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 81
    move-result-object v1

    .line 82
    invoke-virtual {p1, v4, v1}, Lcom/miui/maml/data/Variables;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 85
    add-int/lit8 v3, v3, 0x1

    .line 87
    goto :goto_2a

    .line 88
    :cond_57
    return v2
.end method
