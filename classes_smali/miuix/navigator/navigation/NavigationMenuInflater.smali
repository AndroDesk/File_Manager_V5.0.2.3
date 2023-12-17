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
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lm/f;-><init>(Landroid/content/Context;)V

    .line 4
    iput-object p1, p0, Lmiuix/navigator/navigation/NavigationMenuInflater;->mContext:Landroid/content/Context;

    .line 6
    return-void
.end method

.method private parseMenuExtraData(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/view/Menu;)V
    .registers 18

    .line 1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 4
    move-result v0

    .line 5
    :goto_4
    const/4 v1, 0x2

    .line 6
    const-string v2, "menu"

    .line 8
    const/4 v3, 0x1

    .line 9
    if-ne v0, v1, :cond_25

    .line 11
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 18
    move-result v4

    .line 19
    if-eqz v4, :cond_19

    .line 21
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 24
    move-result v0

    .line 25
    goto :goto_2b

    .line 26
    :cond_19
    new-instance v1, Ljava/lang/RuntimeException;

    .line 28
    const-string v2, "Expecting menu, got "

    .line 30
    invoke-static {v2, v0}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 33
    move-result-object v0

    .line 34
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 37
    throw v1

    .line 38
    :cond_25
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 41
    move-result v0

    .line 42
    if-ne v0, v3, :cond_b0

    .line 44
    :goto_2b
    const/4 v4, 0x0

    .line 45
    const/4 v5, 0x0

    .line 46
    move-object v8, v4

    .line 47
    move v6, v5

    .line 48
    move v7, v6

    .line 49
    move v9, v7

    .line 50
    :goto_31
    if-nez v6, :cond_ae

    .line 52
    if-eq v0, v3, :cond_a5

    .line 54
    const-string v10, "item"

    .line 56
    const-string v11, "group"

    .line 58
    if-eq v0, v1, :cond_70

    .line 60
    const/4 v12, 0x3

    .line 61
    if-eq v0, v12, :cond_3f

    .line 63
    goto :goto_7d

    .line 64
    :cond_3f
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 67
    move-result-object v0

    .line 68
    if-eqz v7, :cond_53

    .line 70
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 73
    move-result v12

    .line 74
    if-eqz v12, :cond_53

    .line 76
    move-object v10, p0

    .line 77
    move-object/from16 v11, p2

    .line 79
    move-object/from16 v12, p3

    .line 81
    move-object v8, v4

    .line 82
    move v7, v5

    .line 83
    goto :goto_a0

    .line 84
    :cond_53
    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 87
    move-result v11

    .line 88
    if-eqz v11, :cond_5a

    .line 90
    goto :goto_7d

    .line 91
    :cond_5a
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 94
    move-result v10

    .line 95
    if-eqz v10, :cond_63

    .line 97
    add-int/lit8 v9, v9, 0x1

    .line 99
    goto :goto_7d

    .line 100
    :cond_63
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 103
    move-result v0

    .line 104
    if-eqz v0, :cond_7d

    .line 106
    move-object v10, p0

    .line 107
    move-object/from16 v11, p2

    .line 109
    move-object/from16 v12, p3

    .line 111
    move v6, v3

    .line 112
    goto :goto_a0

    .line 113
    :cond_70
    if-eqz v7, :cond_73

    .line 115
    goto :goto_7d

    .line 116
    :cond_73
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 119
    move-result-object v0

    .line 120
    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 123
    move-result v11

    .line 124
    if-eqz v11, :cond_83

    .line 126
    :cond_7d
    :goto_7d
    move-object v10, p0

    .line 127
    move-object/from16 v11, p2

    .line 129
    move-object/from16 v12, p3

    .line 131
    goto :goto_a0

    .line 132
    :cond_83
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 135
    move-result v10

    .line 136
    if-eqz v10, :cond_92

    .line 138
    move-object v10, p0

    .line 139
    move-object/from16 v11, p2

    .line 141
    move-object/from16 v12, p3

    .line 143
    invoke-direct {p0, v11, v12, v9}, Lmiuix/navigator/navigation/NavigationMenuInflater;->readExtraDataToItem(Landroid/util/AttributeSet;Landroid/view/Menu;I)V

    .line 146
    goto :goto_a0

    .line 147
    :cond_92
    move-object v10, p0

    .line 148
    move-object/from16 v11, p2

    .line 150
    move-object/from16 v12, p3

    .line 152
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 155
    move-result v13

    .line 156
    if-eqz v13, :cond_9e

    .line 158
    goto :goto_a0

    .line 159
    :cond_9e
    move-object v8, v0

    .line 160
    move v7, v3

    .line 161
    :goto_a0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 164
    move-result v0

    .line 165
    goto :goto_31

    .line 166
    :cond_a5
    move-object v10, p0

    .line 167
    new-instance v0, Ljava/lang/RuntimeException;

    .line 169
    const-string v1, "Unexpected end of document"

    .line 171
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 174
    throw v0

    .line 175
    :cond_ae
    move-object v10, p0

    .line 176
    return-void

    .line 177
    :cond_b0
    move-object v10, p0

    .line 178
    move-object/from16 v11, p2

    .line 180
    move-object/from16 v12, p3

    .line 182
    goto/16 :goto_4
.end method

.method private readExtraDataToItem(Landroid/util/AttributeSet;Landroid/view/Menu;I)V
    .registers 6

    .line 1
    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationMenuInflater;->mContext:Landroid/content/Context;

    .line 3
    sget-object v1, Lmiuix/navigator/R$styleable;->NavigationMenuItem:[I

    .line 5
    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 8
    move-result-object p1

    .line 9
    sget v0, Lmiuix/navigator/R$styleable;->NavigationMenuItem_miuixNavigationId:I

    .line 11
    const/4 v1, -0x1

    .line 12
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 15
    move-result v0

    .line 16
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 19
    if-eq v0, v1, :cond_25

    .line 21
    new-instance p1, Landroid/content/Intent;

    .line 23
    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 26
    const-string v1, "miuix.miracle:bottomTabId"

    .line 28
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 31
    invoke-interface {p2, p3}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    .line 34
    move-result-object p2

    .line 35
    invoke-interface {p2, p1}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 38
    :cond_25
    return-void
.end method


# virtual methods
.method public inflate(ILandroid/view/Menu;)V
    .registers 6

    .line 1
    const-string v0, "Error inflating menu XML"

    .line 3
    invoke-super {p0, p1, p2}, Lm/f;->inflate(ILandroid/view/Menu;)V

    .line 6
    const/4 v1, 0x0

    .line 7
    :try_start_6
    iget-object v2, p0, Lmiuix/navigator/navigation/NavigationMenuInflater;->mContext:Landroid/content/Context;

    .line 9
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 12
    move-result-object v2

    .line 13
    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getLayout(I)Landroid/content/res/XmlResourceParser;

    .line 16
    move-result-object v1

    .line 17
    invoke-static {v1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    .line 20
    move-result-object p1

    .line 21
    invoke-direct {p0, v1, p1, p2}, Lmiuix/navigator/navigation/NavigationMenuInflater;->parseMenuExtraData(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/view/Menu;)V
    :try_end_17
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_17} :catch_26
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_17} :catch_1f
    .catchall {:try_start_6 .. :try_end_17} :catchall_1d

    .line 24
    if-eqz v1, :cond_1c

    .line 26
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    .line 29
    :cond_1c
    return-void

    .line 30
    :catchall_1d
    move-exception p1

    .line 31
    goto :goto_2d

    .line 32
    :catch_1f
    move-exception p1

    .line 33
    :try_start_20
    new-instance p2, Landroid/view/InflateException;

    .line 35
    invoke-direct {p2, v0, p1}, Landroid/view/InflateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 38
    throw p2

    .line 39
    :catch_26
    move-exception p1

    .line 40
    new-instance p2, Landroid/view/InflateException;

    .line 42
    invoke-direct {p2, v0, p1}, Landroid/view/InflateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 45
    throw p2
    :try_end_2d
    .catchall {:try_start_20 .. :try_end_2d} :catchall_1d

    .line 46
    :goto_2d
    if-eqz v1, :cond_32

    .line 48
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    .line 51
    :cond_32
    throw p1
.end method
