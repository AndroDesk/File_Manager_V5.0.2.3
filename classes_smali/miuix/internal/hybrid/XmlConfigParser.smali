.class public Lmiuix/internal/hybrid/XmlConfigParser;
.super Ljava/lang/Object;
.source "XmlConfigParser.java"

# interfaces
.implements Lmiuix/internal/hybrid/ConfigParser;


# static fields
.field private static final ATTRIBUTE_NAME:Ljava/lang/String; = "name"

.field private static final ATTRIBUTE_ORIGIN:Ljava/lang/String; = "origin"

.field private static final ATTRIBUTE_SRC:Ljava/lang/String; = "src"

.field private static final ATTRIBUTE_SUBDOMAINS:Ljava/lang/String; = "subdomains"

.field private static final ATTRIBUTE_VALUE:Ljava/lang/String; = "value"

.field private static final CONFIG_FILE_NAME:Ljava/lang/String; = "miui_hybrid_config"

.field private static final ELEMENT_ACCESS:Ljava/lang/String; = "access"

.field private static final ELEMENT_CONTENT:Ljava/lang/String; = "content"

.field private static final ELEMENT_FEATURE:Ljava/lang/String; = "feature"

.field private static final ELEMENT_PARAM:Ljava/lang/String; = "param"

.field private static final ELEMENT_PREFERENCE:Ljava/lang/String; = "preference"

.field private static final ELEMENT_WIDGET:Ljava/lang/String; = "widget"

.field private static final KEY_SIGNATURE:Ljava/lang/String; = "signature"

.field private static final KEY_TIMESTAMP:Ljava/lang/String; = "timestamp"

.field private static final KEY_VENDOR:Ljava/lang/String; = "vendor"

.field private static final META_DATA_KEY:Ljava/lang/String; = "com.miui.sdk.hybrid.config"


# instance fields
.field private mParser:Landroid/content/res/XmlResourceParser;


# direct methods
.method private constructor <init>(Landroid/content/res/XmlResourceParser;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lmiuix/internal/hybrid/XmlConfigParser;->mParser:Landroid/content/res/XmlResourceParser;

    .line 6
    return-void
.end method

.method private buildCompleteConfig(Lmiuix/internal/hybrid/Config;Ljava/util/Map;)Lmiuix/internal/hybrid/Config;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiuix/internal/hybrid/Config;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lmiuix/internal/hybrid/Config;"
        }
    .end annotation

    return-object p1
.end method

.method public static create(Landroid/content/Context;)Lmiuix/internal/hybrid/XmlConfigParser;
    .registers 5

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 8
    move-result-object v1

    .line 9
    const/16 v2, 0x80

    .line 11
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 14
    move-result-object v0

    .line 15
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 17
    if-eqz v0, :cond_19

    .line 19
    const-string v1, "com.miui.sdk.hybrid.config"

    .line 21
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 24
    move-result v0

    .line 25
    goto :goto_1a

    .line 26
    :cond_19
    const/4 v0, 0x0

    .line 27
    :goto_1a
    if-nez v0, :cond_2c

    .line 29
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 32
    move-result-object v0

    .line 33
    const-string v1, "miui_hybrid_config"

    .line 35
    const-string v2, "xml"

    .line 37
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 40
    move-result-object v3

    .line 41
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    move-result v0
    :try_end_2c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_2c} :catch_31

    .line 45
    :cond_2c
    invoke-static {p0, v0}, Lmiuix/internal/hybrid/XmlConfigParser;->createFromResId(Landroid/content/Context;I)Lmiuix/internal/hybrid/XmlConfigParser;

    .line 48
    move-result-object p0

    .line 49
    return-object p0

    .line 50
    :catch_31
    move-exception p0

    .line 51
    new-instance v0, Lmiuix/internal/hybrid/HybridException;

    .line 53
    const/16 v1, 0xc9

    .line 55
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 58
    move-result-object p0

    .line 59
    invoke-direct {v0, v1, p0}, Lmiuix/internal/hybrid/HybridException;-><init>(ILjava/lang/String;)V

    .line 62
    throw v0
.end method

.method public static createFromResId(Landroid/content/Context;I)Lmiuix/internal/hybrid/XmlConfigParser;
    .registers 3

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    .line 8
    move-result-object p0
    :try_end_8
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_8} :catch_d

    .line 9
    invoke-static {p0}, Lmiuix/internal/hybrid/XmlConfigParser;->createFromXmlParser(Landroid/content/res/XmlResourceParser;)Lmiuix/internal/hybrid/XmlConfigParser;

    .line 12
    move-result-object p0

    .line 13
    return-object p0

    .line 14
    :catch_d
    move-exception p0

    .line 15
    new-instance p1, Lmiuix/internal/hybrid/HybridException;

    .line 17
    const/16 v0, 0xc9

    .line 19
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 22
    move-result-object p0

    .line 23
    invoke-direct {p1, v0, p0}, Lmiuix/internal/hybrid/HybridException;-><init>(ILjava/lang/String;)V

    .line 26
    throw p1
.end method

.method public static createFromXmlParser(Landroid/content/res/XmlResourceParser;)Lmiuix/internal/hybrid/XmlConfigParser;
    .registers 2

    .line 1
    new-instance v0, Lmiuix/internal/hybrid/XmlConfigParser;

    .line 3
    invoke-direct {v0, p0}, Lmiuix/internal/hybrid/XmlConfigParser;-><init>(Landroid/content/res/XmlResourceParser;)V

    .line 6
    return-object v0
.end method

.method private getSecurity(Lmiuix/internal/hybrid/Config;)Lmiuix/internal/hybrid/Security;
    .registers 3

    .line 1
    invoke-virtual {p1}, Lmiuix/internal/hybrid/Config;->getSecurity()Lmiuix/internal/hybrid/Security;

    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_e

    .line 7
    new-instance v0, Lmiuix/internal/hybrid/Security;

    .line 9
    invoke-direct {v0}, Lmiuix/internal/hybrid/Security;-><init>()V

    .line 12
    invoke-virtual {p1, v0}, Lmiuix/internal/hybrid/Config;->setSecurity(Lmiuix/internal/hybrid/Security;)V

    .line 15
    :cond_e
    return-object v0
.end method

.method private parseAccessElement(Lmiuix/internal/hybrid/Config;Landroid/content/res/XmlResourceParser;)V
    .registers 7

    .line 1
    new-instance v0, Lmiuix/internal/hybrid/Permission;

    .line 3
    invoke-direct {v0}, Lmiuix/internal/hybrid/Permission;-><init>()V

    .line 6
    const/4 v1, 0x0

    .line 7
    const-string v2, "origin"

    .line 9
    invoke-interface {p2, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 12
    move-result-object v2

    .line 13
    invoke-virtual {v0, v2}, Lmiuix/internal/hybrid/Permission;->setUri(Ljava/lang/String;)V

    .line 16
    const-string v2, "subdomains"

    .line 18
    const/4 v3, 0x0

    .line 19
    invoke-interface {p2, v1, v2, v3}, Landroid/util/AttributeSet;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 22
    move-result p2

    .line 23
    invoke-virtual {v0, p2}, Lmiuix/internal/hybrid/Permission;->setApplySubdomains(Z)V

    .line 26
    invoke-virtual {v0, v3}, Lmiuix/internal/hybrid/Permission;->setForbidden(Z)V

    .line 29
    invoke-virtual {p1, v0}, Lmiuix/internal/hybrid/Config;->addPermission(Lmiuix/internal/hybrid/Permission;)V

    .line 32
    return-void
.end method

.method private parseContentElement(Lmiuix/internal/hybrid/Config;Landroid/content/res/XmlResourceParser;)V
    .registers 5

    .line 1
    const/4 v0, 0x0

    .line 2
    const-string v1, "src"

    .line 4
    invoke-interface {p2, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 7
    move-result-object p2

    .line 8
    invoke-virtual {p1, p2}, Lmiuix/internal/hybrid/Config;->setContent(Ljava/lang/String;)V

    .line 11
    return-void
.end method

.method private parseFeatureElement(Lmiuix/internal/hybrid/Config;Landroid/content/res/XmlResourceParser;)V
    .registers 8

    .line 1
    new-instance v0, Lmiuix/internal/hybrid/Feature;

    .line 3
    invoke-direct {v0}, Lmiuix/internal/hybrid/Feature;-><init>()V

    .line 6
    const/4 v1, 0x0

    .line 7
    const-string v2, "name"

    .line 9
    invoke-interface {p2, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v0, v1}, Lmiuix/internal/hybrid/Feature;->setName(Ljava/lang/String;)V

    .line 16
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 19
    move-result v1

    .line 20
    :cond_13
    :goto_13
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 23
    move-result v2

    .line 24
    const/4 v3, 0x1

    .line 25
    if-eq v2, v3, :cond_39

    .line 27
    const/4 v3, 0x3

    .line 28
    if-ne v2, v3, :cond_23

    .line 30
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 33
    move-result v4

    .line 34
    if-le v4, v1, :cond_39

    .line 36
    :cond_23
    if-eq v2, v3, :cond_13

    .line 38
    const/4 v3, 0x4

    .line 39
    if-ne v2, v3, :cond_29

    .line 41
    goto :goto_13

    .line 42
    :cond_29
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 45
    move-result-object v2

    .line 46
    const-string v3, "param"

    .line 48
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 51
    move-result v2

    .line 52
    if-eqz v2, :cond_13

    .line 54
    invoke-direct {p0, v0, p2}, Lmiuix/internal/hybrid/XmlConfigParser;->parseParamElement(Lmiuix/internal/hybrid/Feature;Landroid/content/res/XmlResourceParser;)V

    .line 57
    goto :goto_13

    .line 58
    :cond_39
    invoke-virtual {p1, v0}, Lmiuix/internal/hybrid/Config;->addFeature(Lmiuix/internal/hybrid/Feature;)V

    .line 61
    return-void
.end method

.method private parseParamElement(Lmiuix/internal/hybrid/Feature;Landroid/content/res/XmlResourceParser;)V
    .registers 6

    .line 1
    const/4 v0, 0x0

    .line 2
    const-string v1, "name"

    .line 4
    invoke-interface {p2, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 7
    move-result-object v1

    .line 8
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 11
    move-result-object v1

    .line 12
    const-string v2, "value"

    .line 14
    invoke-interface {p2, v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 17
    move-result-object p2

    .line 18
    invoke-virtual {p1, v1, p2}, Lmiuix/internal/hybrid/Feature;->setParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method private parsePreferenceElement(Lmiuix/internal/hybrid/Config;Landroid/content/res/XmlResourceParser;)V
    .registers 6

    .line 1
    const/4 v0, 0x0

    .line 2
    const-string v1, "name"

    .line 4
    invoke-interface {p2, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 7
    move-result-object v1

    .line 8
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 11
    move-result-object v1

    .line 12
    const-string v2, "value"

    .line 14
    invoke-interface {p2, v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 17
    move-result-object p2

    .line 18
    const-string v0, "signature"

    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_21

    .line 26
    invoke-direct {p0, p1}, Lmiuix/internal/hybrid/XmlConfigParser;->getSecurity(Lmiuix/internal/hybrid/Config;)Lmiuix/internal/hybrid/Security;

    .line 29
    move-result-object p1

    .line 30
    invoke-virtual {p1, p2}, Lmiuix/internal/hybrid/Security;->setSignature(Ljava/lang/String;)V

    .line 33
    goto :goto_44

    .line 34
    :cond_21
    const-string v0, "timestamp"

    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 39
    move-result v0

    .line 40
    if-eqz v0, :cond_35

    .line 42
    invoke-direct {p0, p1}, Lmiuix/internal/hybrid/XmlConfigParser;->getSecurity(Lmiuix/internal/hybrid/Config;)Lmiuix/internal/hybrid/Security;

    .line 45
    move-result-object p1

    .line 46
    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 49
    move-result-wide v0

    .line 50
    invoke-virtual {p1, v0, v1}, Lmiuix/internal/hybrid/Security;->setTimestamp(J)V

    .line 53
    goto :goto_44

    .line 54
    :cond_35
    const-string v0, "vendor"

    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 59
    move-result v0

    .line 60
    if-eqz v0, :cond_41

    .line 62
    invoke-virtual {p1, p2}, Lmiuix/internal/hybrid/Config;->setVendor(Ljava/lang/String;)V

    .line 65
    goto :goto_44

    .line 66
    :cond_41
    invoke-virtual {p1, v1, p2}, Lmiuix/internal/hybrid/Config;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    :goto_44
    return-void
.end method

.method private parseWidgetElement(Lmiuix/internal/hybrid/Config;Landroid/content/res/XmlResourceParser;)V
    .registers 7

    .line 1
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 4
    move-result v0

    .line 5
    :cond_4
    :goto_4
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x1

    .line 10
    if-eq v1, v2, :cond_4e

    .line 12
    const/4 v2, 0x3

    .line 13
    if-ne v1, v2, :cond_14

    .line 15
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 18
    move-result v3

    .line 19
    if-le v3, v0, :cond_4e

    .line 21
    :cond_14
    if-eq v1, v2, :cond_4

    .line 23
    const/4 v2, 0x4

    .line 24
    if-ne v1, v2, :cond_1a

    .line 26
    goto :goto_4

    .line 27
    :cond_1a
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 30
    move-result-object v1

    .line 31
    const-string v2, "content"

    .line 33
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 36
    move-result v2

    .line 37
    if-eqz v2, :cond_2a

    .line 39
    invoke-direct {p0, p1, p2}, Lmiuix/internal/hybrid/XmlConfigParser;->parseContentElement(Lmiuix/internal/hybrid/Config;Landroid/content/res/XmlResourceParser;)V

    .line 42
    goto :goto_4

    .line 43
    :cond_2a
    const-string v2, "feature"

    .line 45
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 48
    move-result v2

    .line 49
    if-eqz v2, :cond_36

    .line 51
    invoke-direct {p0, p1, p2}, Lmiuix/internal/hybrid/XmlConfigParser;->parseFeatureElement(Lmiuix/internal/hybrid/Config;Landroid/content/res/XmlResourceParser;)V

    .line 54
    goto :goto_4

    .line 55
    :cond_36
    const-string v2, "preference"

    .line 57
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 60
    move-result v2

    .line 61
    if-eqz v2, :cond_42

    .line 63
    invoke-direct {p0, p1, p2}, Lmiuix/internal/hybrid/XmlConfigParser;->parsePreferenceElement(Lmiuix/internal/hybrid/Config;Landroid/content/res/XmlResourceParser;)V

    .line 66
    goto :goto_4

    .line 67
    :cond_42
    const-string v2, "access"

    .line 69
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 72
    move-result v1

    .line 73
    if-eqz v1, :cond_4

    .line 75
    invoke-direct {p0, p1, p2}, Lmiuix/internal/hybrid/XmlConfigParser;->parseAccessElement(Lmiuix/internal/hybrid/Config;Landroid/content/res/XmlResourceParser;)V

    .line 78
    goto :goto_4

    .line 79
    :cond_4e
    return-void
.end method


# virtual methods
.method public parse(Ljava/util/Map;)Lmiuix/internal/hybrid/Config;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lmiuix/internal/hybrid/Config;"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_7

    .line 3
    new-instance p1, Ljava/util/HashMap;

    .line 5
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 8
    :cond_7
    new-instance v0, Lmiuix/internal/hybrid/Config;

    .line 10
    invoke-direct {v0}, Lmiuix/internal/hybrid/Config;-><init>()V

    .line 13
    iget-object v1, p0, Lmiuix/internal/hybrid/XmlConfigParser;->mParser:Landroid/content/res/XmlResourceParser;

    .line 15
    if-eqz v1, :cond_4f

    .line 17
    :goto_10
    const/16 v2, 0xc9

    .line 19
    :try_start_12
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 22
    move-result v3

    .line 23
    const/4 v4, 0x2

    .line 24
    if-eq v3, v4, :cond_1d

    .line 26
    const/4 v4, 0x1

    .line 27
    if-eq v3, v4, :cond_1d

    .line 29
    goto :goto_10

    .line 30
    :cond_1d
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 33
    move-result-object v3

    .line 34
    const-string v4, "widget"

    .line 36
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 39
    move-result v3

    .line 40
    if-eqz v3, :cond_2c

    .line 42
    invoke-direct {p0, v0, v1}, Lmiuix/internal/hybrid/XmlConfigParser;->parseWidgetElement(Lmiuix/internal/hybrid/Config;Landroid/content/res/XmlResourceParser;)V
    :try_end_2c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_12 .. :try_end_2c} :catch_3d
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_2c} :catch_32
    .catchall {:try_start_12 .. :try_end_2c} :catchall_48

    .line 45
    :cond_2c
    iget-object v1, p0, Lmiuix/internal/hybrid/XmlConfigParser;->mParser:Landroid/content/res/XmlResourceParser;

    .line 47
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    .line 50
    goto :goto_4f

    .line 51
    :catch_32
    move-exception p1

    .line 52
    :try_start_33
    new-instance v0, Lmiuix/internal/hybrid/HybridException;

    .line 54
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 57
    move-result-object p1

    .line 58
    invoke-direct {v0, v2, p1}, Lmiuix/internal/hybrid/HybridException;-><init>(ILjava/lang/String;)V

    .line 61
    throw v0

    .line 62
    :catch_3d
    move-exception p1

    .line 63
    new-instance v0, Lmiuix/internal/hybrid/HybridException;

    .line 65
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 68
    move-result-object p1

    .line 69
    invoke-direct {v0, v2, p1}, Lmiuix/internal/hybrid/HybridException;-><init>(ILjava/lang/String;)V

    .line 72
    throw v0
    :try_end_48
    .catchall {:try_start_33 .. :try_end_48} :catchall_48

    .line 73
    :catchall_48
    move-exception p1

    .line 74
    iget-object v0, p0, Lmiuix/internal/hybrid/XmlConfigParser;->mParser:Landroid/content/res/XmlResourceParser;

    .line 76
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->close()V

    .line 79
    throw p1

    .line 80
    :cond_4f
    :goto_4f
    invoke-direct {p0, v0, p1}, Lmiuix/internal/hybrid/XmlConfigParser;->buildCompleteConfig(Lmiuix/internal/hybrid/Config;Ljava/util/Map;)Lmiuix/internal/hybrid/Config;

    .line 83
    move-result-object p1

    .line 84
    return-object p1
.end method
