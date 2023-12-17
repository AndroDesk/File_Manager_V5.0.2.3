.class Lmiuix/navigator/navigation/NavigationMenuInflater;
.super Lm/f;
.source "NavigationMenuInflater.java"


# static fields
.field private static final XML_GROUP:Ljava/lang/String; = "group"

.field private static final XML_ITEM:Ljava/lang/String; = "item"

.field private static final XML_MENU:Ljava/lang/String; = "menu"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Lm/f;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lmiuix/navigator/navigation/NavigationMenuInflater;->mContext:Landroid/content/Context;

    return-void
.end method

.method private parseMenuExtraData(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/view/Menu;)V
    .registers 18

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    :goto_4
    const/4 v1, 0x2

    const-string v2, "menu"

    const/4 v3, 0x1

    if-ne v0, v1, :cond_25

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_19

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    goto :goto_2b

    :cond_19
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Expecting menu, got "

    invoke-static {v2, v0}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_25
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    if-ne v0, v3, :cond_b0

    :goto_2b
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v8, v4

    move v6, v5

    move v7, v6

    move v9, v7

    :goto_31
    if-nez v6, :cond_ae

    if-eq v0, v3, :cond_a5

    const-string v10, "item"

    const-string v11, "group"

    if-eq v0, v1, :cond_70

    const/4 v12, 0x3

    if-eq v0, v12, :cond_3f

    goto :goto_7d

    :cond_3f
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v7, :cond_53

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_53

    move-object v10, p0

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    move-object v8, v4

    move v7, v5

    goto :goto_a0

    :cond_53
    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5a

    goto :goto_7d

    :cond_5a
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_63

    add-int/lit8 v9, v9, 0x1

    goto :goto_7d

    :cond_63
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7d

    move-object v10, p0

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    move v6, v3

    goto :goto_a0

    :cond_70
    if-eqz v7, :cond_73

    goto :goto_7d

    :cond_73
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_83

    :cond_7d
    :goto_7d
    move-object v10, p0

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    goto :goto_a0

    :cond_83
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_92

    move-object v10, p0

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    invoke-direct {p0, v11, v12, v9}, Lmiuix/navigator/navigation/NavigationMenuInflater;->readExtraDataToItem(Landroid/util/AttributeSet;Landroid/view/Menu;I)V

    goto :goto_a0

    :cond_92
    move-object v10, p0

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_9e

    goto :goto_a0

    :cond_9e
    move-object v8, v0

    move v7, v3

    :goto_a0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    goto :goto_31

    :cond_a5
    move-object v10, p0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unexpected end of document"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_ae
    move-object v10, p0

    return-void

    :cond_b0
    move-object v10, p0

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    goto/16 :goto_4
.end method

.method private readExtraDataToItem(Landroid/util/AttributeSet;Landroid/view/Menu;I)V
    .registers 6

    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationMenuInflater;->mContext:Landroid/content/Context;

    sget-object v1, Lmiuix/navigator/R$styleable;->NavigationMenuItem:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    sget v0, Lmiuix/navigator/R$styleable;->NavigationMenuItem_miuixNavigationId:I

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    if-eq v0, v1, :cond_25

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v1, "miuix.miracle:bottomTabId"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-interface {p2, p3}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object p2

    invoke-interface {p2, p1}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    :cond_25
    return-void
.end method


# virtual methods
.method public inflate(ILandroid/view/Menu;)V
    .registers 6

    const-string v0, "Error inflating menu XML"

    invoke-super {p0, p1, p2}, Lm/f;->inflate(ILandroid/view/Menu;)V

    const/4 v1, 0x0

    :try_start_6
    iget-object v2, p0, Lmiuix/navigator/navigation/NavigationMenuInflater;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getLayout(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    invoke-static {v1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object p1

    invoke-direct {p0, v1, p1, p2}, Lmiuix/navigator/navigation/NavigationMenuInflater;->parseMenuExtraData(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/view/Menu;)V
    :try_end_17
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_17} :catch_26
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_17} :catch_1f
    .catchall {:try_start_6 .. :try_end_17} :catchall_1d

    if-eqz v1, :cond_1c

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_1c
    return-void

    :catchall_1d
    move-exception p1

    goto :goto_2d

    :catch_1f
    move-exception p1

    :try_start_20
    new-instance p2, Landroid/view/InflateException;

    invoke-direct {p2, v0, p1}, Landroid/view/InflateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_26
    move-exception p1

    new-instance p2, Landroid/view/InflateException;

    invoke-direct {p2, v0, p1}, Landroid/view/InflateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
    :try_end_2d
    .catchall {:try_start_20 .. :try_end_2d} :catchall_1d

    :goto_2d
    if-eqz v1, :cond_32

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_32
    throw p1
.end method
