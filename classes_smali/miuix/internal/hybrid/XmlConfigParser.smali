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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method private constructor <init>(Landroid/content/res/XmlResourceParser;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmiuix/internal/hybrid/XmlConfigParser;->mParser:Landroid/content/res/XmlResourceParser;

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

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v0, :cond_19

    const-string v1, "com.miui.sdk.hybrid.config"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_1a

    :cond_19
    const/4 v0, 0x0

    :goto_1a
    if-nez v0, :cond_2c

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "miui_hybrid_config"

    const-string v2, "xml"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0
    :try_end_2c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_2c} :catch_31

    :cond_2c
    invoke-static {p0, v0}, Lmiuix/internal/hybrid/XmlConfigParser;->createFromResId(Landroid/content/Context;I)Lmiuix/internal/hybrid/XmlConfigParser;

    move-result-object p0

    return-object p0

    :catch_31
    move-exception p0

    new-instance v0, Lmiuix/internal/hybrid/HybridException;

    const/16 v1, 0xc9

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lmiuix/internal/hybrid/HybridException;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method public static createFromResId(Landroid/content/Context;I)Lmiuix/internal/hybrid/XmlConfigParser;
    .registers 3

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object p0
    :try_end_8
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_8} :catch_d

    invoke-static {p0}, Lmiuix/internal/hybrid/XmlConfigParser;->createFromXmlParser(Landroid/content/res/XmlResourceParser;)Lmiuix/internal/hybrid/XmlConfigParser;

    move-result-object p0

    return-object p0

    :catch_d
    move-exception p0

    new-instance p1, Lmiuix/internal/hybrid/HybridException;

    const/16 v0, 0xc9

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, v0, p0}, Lmiuix/internal/hybrid/HybridException;-><init>(ILjava/lang/String;)V

    throw p1
.end method

.method public static createFromXmlParser(Landroid/content/res/XmlResourceParser;)Lmiuix/internal/hybrid/XmlConfigParser;
    .registers 2

    new-instance v0, Lmiuix/internal/hybrid/XmlConfigParser;

    invoke-direct {v0, p0}, Lmiuix/internal/hybrid/XmlConfigParser;-><init>(Landroid/content/res/XmlResourceParser;)V

    return-object v0
.end method

.method private getSecurity(Lmiuix/internal/hybrid/Config;)Lmiuix/internal/hybrid/Security;
    .registers 3

    invoke-virtual {p1}, Lmiuix/internal/hybrid/Config;->getSecurity()Lmiuix/internal/hybrid/Security;

    move-result-object v0

    if-nez v0, :cond_e

    new-instance v0, Lmiuix/internal/hybrid/Security;

    invoke-direct {v0}, Lmiuix/internal/hybrid/Security;-><init>()V

    invoke-virtual {p1, v0}, Lmiuix/internal/hybrid/Config;->setSecurity(Lmiuix/internal/hybrid/Security;)V

    :cond_e
    return-object v0
.end method

.method private parseAccessElement(Lmiuix/internal/hybrid/Config;Landroid/content/res/XmlResourceParser;)V
    .registers 7

    new-instance v0, Lmiuix/internal/hybrid/Permission;

    invoke-direct {v0}, Lmiuix/internal/hybrid/Permission;-><init>()V

    const/4 v1, 0x0

    const-string v2, "origin"

    invoke-interface {p2, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lmiuix/internal/hybrid/Permission;->setUri(Ljava/lang/String;)V

    const-string v2, "subdomains"

    const/4 v3, 0x0

    invoke-interface {p2, v1, v2, v3}, Landroid/util/AttributeSet;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p2

    invoke-virtual {v0, p2}, Lmiuix/internal/hybrid/Permission;->setApplySubdomains(Z)V

    invoke-virtual {v0, v3}, Lmiuix/internal/hybrid/Permission;->setForbidden(Z)V

    invoke-virtual {p1, v0}, Lmiuix/internal/hybrid/Config;->addPermission(Lmiuix/internal/hybrid/Permission;)V

    return-void
.end method

.method private parseContentElement(Lmiuix/internal/hybrid/Config;Landroid/content/res/XmlResourceParser;)V
    .registers 5

    const/4 v0, 0x0

    const-string v1, "src"

    invoke-interface {p2, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lmiuix/internal/hybrid/Config;->setContent(Ljava/lang/String;)V

    return-void
.end method

.method private parseFeatureElement(Lmiuix/internal/hybrid/Config;Landroid/content/res/XmlResourceParser;)V
    .registers 8

    new-instance v0, Lmiuix/internal/hybrid/Feature;

    invoke-direct {v0}, Lmiuix/internal/hybrid/Feature;-><init>()V

    const/4 v1, 0x0

    const-string v2, "name"

    invoke-interface {p2, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiuix/internal/hybrid/Feature;->setName(Ljava/lang/String;)V

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    :cond_13
    :goto_13
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_39

    const/4 v3, 0x3

    if-ne v2, v3, :cond_23

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    if-le v4, v1, :cond_39

    :cond_23
    if-eq v2, v3, :cond_13

    const/4 v3, 0x4

    if-ne v2, v3, :cond_29

    goto :goto_13

    :cond_29
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "param"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    invoke-direct {p0, v0, p2}, Lmiuix/internal/hybrid/XmlConfigParser;->parseParamElement(Lmiuix/internal/hybrid/Feature;Landroid/content/res/XmlResourceParser;)V

    goto :goto_13

    :cond_39
    invoke-virtual {p1, v0}, Lmiuix/internal/hybrid/Config;->addFeature(Lmiuix/internal/hybrid/Feature;)V

    return-void
.end method

.method private parseParamElement(Lmiuix/internal/hybrid/Feature;Landroid/content/res/XmlResourceParser;)V
    .registers 6

    const/4 v0, 0x0

    const-string v1, "name"

    invoke-interface {p2, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "value"

    invoke-interface {p2, v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v1, p2}, Lmiuix/internal/hybrid/Feature;->setParam(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private parsePreferenceElement(Lmiuix/internal/hybrid/Config;Landroid/content/res/XmlResourceParser;)V
    .registers 6

    const/4 v0, 0x0

    const-string v1, "name"

    invoke-interface {p2, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "value"

    invoke-interface {p2, v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "signature"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-direct {p0, p1}, Lmiuix/internal/hybrid/XmlConfigParser;->getSecurity(Lmiuix/internal/hybrid/Config;)Lmiuix/internal/hybrid/Security;

    move-result-object p1

    invoke-virtual {p1, p2}, Lmiuix/internal/hybrid/Security;->setSignature(Ljava/lang/String;)V

    goto :goto_44

    :cond_21
    const-string v0, "timestamp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    invoke-direct {p0, p1}, Lmiuix/internal/hybrid/XmlConfigParser;->getSecurity(Lmiuix/internal/hybrid/Config;)Lmiuix/internal/hybrid/Security;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lmiuix/internal/hybrid/Security;->setTimestamp(J)V

    goto :goto_44

    :cond_35
    const-string v0, "vendor"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_41

    invoke-virtual {p1, p2}, Lmiuix/internal/hybrid/Config;->setVendor(Ljava/lang/String;)V

    goto :goto_44

    :cond_41
    invoke-virtual {p1, v1, p2}, Lmiuix/internal/hybrid/Config;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    :goto_44
    return-void
.end method

.method private parseWidgetElement(Lmiuix/internal/hybrid/Config;Landroid/content/res/XmlResourceParser;)V
    .registers 7

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    :cond_4
    :goto_4
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_4e

    const/4 v2, 0x3

    if-ne v1, v2, :cond_14

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-le v3, v0, :cond_4e

    :cond_14
    if-eq v1, v2, :cond_4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1a

    goto :goto_4

    :cond_1a
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "content"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a

    invoke-direct {p0, p1, p2}, Lmiuix/internal/hybrid/XmlConfigParser;->parseContentElement(Lmiuix/internal/hybrid/Config;Landroid/content/res/XmlResourceParser;)V

    goto :goto_4

    :cond_2a
    const-string v2, "feature"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_36

    invoke-direct {p0, p1, p2}, Lmiuix/internal/hybrid/XmlConfigParser;->parseFeatureElement(Lmiuix/internal/hybrid/Config;Landroid/content/res/XmlResourceParser;)V

    goto :goto_4

    :cond_36
    const-string v2, "preference"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_42

    invoke-direct {p0, p1, p2}, Lmiuix/internal/hybrid/XmlConfigParser;->parsePreferenceElement(Lmiuix/internal/hybrid/Config;Landroid/content/res/XmlResourceParser;)V

    goto :goto_4

    :cond_42
    const-string v2, "access"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-direct {p0, p1, p2}, Lmiuix/internal/hybrid/XmlConfigParser;->parseAccessElement(Lmiuix/internal/hybrid/Config;Landroid/content/res/XmlResourceParser;)V

    goto :goto_4

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

    if-nez p1, :cond_7

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    :cond_7
    new-instance v0, Lmiuix/internal/hybrid/Config;

    invoke-direct {v0}, Lmiuix/internal/hybrid/Config;-><init>()V

    iget-object v1, p0, Lmiuix/internal/hybrid/XmlConfigParser;->mParser:Landroid/content/res/XmlResourceParser;

    if-eqz v1, :cond_4f

    :goto_10
    const/16 v2, 0xc9

    :try_start_12
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1d

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1d

    goto :goto_10

    :cond_1d
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "widget"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2c

    invoke-direct {p0, v0, v1}, Lmiuix/internal/hybrid/XmlConfigParser;->parseWidgetElement(Lmiuix/internal/hybrid/Config;Landroid/content/res/XmlResourceParser;)V
    :try_end_2c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_12 .. :try_end_2c} :catch_3d
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_2c} :catch_32
    .catchall {:try_start_12 .. :try_end_2c} :catchall_48

    :cond_2c
    iget-object v1, p0, Lmiuix/internal/hybrid/XmlConfigParser;->mParser:Landroid/content/res/XmlResourceParser;

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_4f

    :catch_32
    move-exception p1

    :try_start_33
    new-instance v0, Lmiuix/internal/hybrid/HybridException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v2, p1}, Lmiuix/internal/hybrid/HybridException;-><init>(ILjava/lang/String;)V

    throw v0

    :catch_3d
    move-exception p1

    new-instance v0, Lmiuix/internal/hybrid/HybridException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v2, p1}, Lmiuix/internal/hybrid/HybridException;-><init>(ILjava/lang/String;)V

    throw v0
    :try_end_48
    .catchall {:try_start_33 .. :try_end_48} :catchall_48

    :catchall_48
    move-exception p1

    iget-object v0, p0, Lmiuix/internal/hybrid/XmlConfigParser;->mParser:Landroid/content/res/XmlResourceParser;

    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->close()V

    throw p1

    :cond_4f
    :goto_4f
    invoke-direct {p0, v0, p1}, Lmiuix/internal/hybrid/XmlConfigParser;->buildCompleteConfig(Lmiuix/internal/hybrid/Config;Ljava/util/Map;)Lmiuix/internal/hybrid/Config;

    move-result-object p1

    return-object p1
.end method
