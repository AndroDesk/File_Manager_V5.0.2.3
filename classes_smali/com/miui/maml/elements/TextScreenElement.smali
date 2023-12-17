.class public Lcom/miui/maml/elements/TextScreenElement;
.super Lcom/miui/maml/elements/AnimatedScreenElement;
.source "TextScreenElement.java"


# static fields
.field private static final CRLF:Ljava/lang/String; = "\n"

.field private static final DEFAULT_SIZE:I = 0x12

.field private static final LOG_TAG:Ljava/lang/String; = "TextScreenElement"

.field private static final MARQUEE_FRAMERATE:I = 0x2d

.field private static final PADDING:I = 0x32

.field private static final PROPERTY_NAME_TEXT_COLOR:Ljava/lang/String; = "textColor"

.field private static final PROPERTY_NAME_TEXT_SHADOW_COLOR:Ljava/lang/String; = "textShadowColor"

.field private static final PROPERTY_NAME_TEXT_SIZE:Ljava/lang/String; = "textSize"

.field private static final RAW_CRLF:Ljava/lang/String; = "\\n"

.field public static final TAG_NAME:Ljava/lang/String; = "Text"

.field public static final TEXT_COLOR:Lcom/miui/maml/folme/AnimatedProperty$AnimatedColorProperty;

.field public static final TEXT_HEIGHT:Ljava/lang/String; = "text_height"

.field public static final TEXT_SHADOW_COLOR:Lcom/miui/maml/folme/AnimatedProperty$AnimatedColorProperty;

.field public static final TEXT_SIZE:Lcom/miui/maml/folme/AnimatedProperty;

.field public static final TEXT_WIDTH:Ljava/lang/String; = "text_width"

.field private static final mLock:Ljava/lang/Object;


# instance fields
.field private mColorParser:Lcom/miui/maml/util/ColorParser;

.field private mFontScaleEnabled:Z

.field public mFormatter:Lcom/miui/maml/util/TextFormatter;

.field private mLayoutWidth:F

.field private mMarqueeGap:I

.field private mMarqueePos:F

.field private mMarqueeSpeed:I

.field private mMultiLine:Z

.field private final mPaint:Landroid/text/TextPaint;

.field private mPreviousTime:J

.field private mSetText:Ljava/lang/String;

.field private mShadowColorParser:Lcom/miui/maml/util/ColorParser;

.field private mShadowDx:F

.field private mShadowDy:F

.field private mShadowRadius:F

.field private mShouldMarquee:Z

.field private mSpacingAdd:F

.field private mSpacingMult:F

.field private mText:Ljava/lang/String;

.field private mTextColorProperty:Lcom/miui/maml/folme/PropertyWrapper;

.field private mTextHeight:F

.field private mTextHeightVar:Lcom/miui/maml/data/IndexedVariable;

.field private mTextLayout:Landroid/text/StaticLayout;

.field private mTextShadowColorProperty:Lcom/miui/maml/folme/PropertyWrapper;

.field private mTextSize:F

.field private mTextSizeProperty:Lcom/miui/maml/folme/PropertyWrapper;

.field private mTextWidth:F

.field private mTextWidthVar:Lcom/miui/maml/data/IndexedVariable;


# direct methods
.method public static constructor <clinit>()V
    .registers 7

    .line 1
    new-instance v0, Ljava/lang/Object;

    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 6
    sput-object v0, Lcom/miui/maml/elements/TextScreenElement;->mLock:Ljava/lang/Object;

    .line 8
    new-instance v0, Lcom/miui/maml/elements/TextScreenElement$1;

    .line 10
    const-string v1, "textColor"

    .line 12
    invoke-direct {v0, v1}, Lcom/miui/maml/elements/TextScreenElement$1;-><init>(Ljava/lang/String;)V

    .line 15
    sput-object v0, Lcom/miui/maml/elements/TextScreenElement;->TEXT_COLOR:Lcom/miui/maml/folme/AnimatedProperty$AnimatedColorProperty;

    .line 17
    new-instance v2, Lcom/miui/maml/elements/TextScreenElement$2;

    .line 19
    const-string v3, "textSize"

    .line 21
    invoke-direct {v2, v3}, Lcom/miui/maml/elements/TextScreenElement$2;-><init>(Ljava/lang/String;)V

    .line 24
    sput-object v2, Lcom/miui/maml/elements/TextScreenElement;->TEXT_SIZE:Lcom/miui/maml/folme/AnimatedProperty;

    .line 26
    new-instance v4, Lcom/miui/maml/elements/TextScreenElement$3;

    .line 28
    const-string v5, "textShadowColor"

    .line 30
    invoke-direct {v4, v5}, Lcom/miui/maml/elements/TextScreenElement$3;-><init>(Ljava/lang/String;)V

    .line 33
    sput-object v4, Lcom/miui/maml/elements/TextScreenElement;->TEXT_SHADOW_COLOR:Lcom/miui/maml/folme/AnimatedProperty$AnimatedColorProperty;

    .line 35
    sget-object v6, Lcom/miui/maml/folme/AnimatedProperty;->sPropertyNameMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 37
    invoke-virtual {v6, v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    sget-object v1, Lcom/miui/maml/folme/AnimatedTarget;->sPropertyMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 42
    const/16 v6, 0x3eb

    .line 44
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 47
    move-result-object v6

    .line 48
    invoke-virtual {v1, v6, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    sget-object v1, Lcom/miui/maml/folme/AnimatedTarget;->sPropertyTypeMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 53
    invoke-virtual {v1, v0, v6}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    sget-object v0, Lcom/miui/maml/folme/AnimatedProperty;->sPropertyNameMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 58
    invoke-virtual {v0, v3, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    sget-object v0, Lcom/miui/maml/folme/AnimatedTarget;->sPropertyMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 63
    const/16 v1, 0x3ea

    .line 65
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 68
    move-result-object v1

    .line 69
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    sget-object v0, Lcom/miui/maml/folme/AnimatedTarget;->sPropertyTypeMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 74
    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    sget-object v0, Lcom/miui/maml/folme/AnimatedProperty;->sPropertyNameMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 79
    invoke-virtual {v0, v5, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    sget-object v0, Lcom/miui/maml/folme/AnimatedTarget;->sPropertyMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 84
    const/16 v1, 0x3f5

    .line 86
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 89
    move-result-object v1

    .line 90
    invoke-virtual {v0, v1, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    sget-object v0, Lcom/miui/maml/folme/AnimatedTarget;->sPropertyTypeMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 95
    invoke-virtual {v0, v4, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V
    .registers 5

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/elements/AnimatedScreenElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 4
    new-instance p2, Landroid/text/TextPaint;

    .line 6
    invoke-direct {p2}, Landroid/text/TextPaint;-><init>()V

    .line 9
    iput-object p2, p0, Lcom/miui/maml/elements/TextScreenElement;->mPaint:Landroid/text/TextPaint;

    .line 11
    const p2, 0x7f7fffff  # Float.MAX_VALUE

    .line 14
    iput p2, p0, Lcom/miui/maml/elements/TextScreenElement;->mMarqueePos:F

    .line 16
    const-wide/high16 v0, 0x4032000000000000L  # 18.0

    .line 18
    invoke-virtual {p0, v0, v1}, Lcom/miui/maml/elements/ScreenElement;->scale(D)F

    .line 21
    move-result p2

    .line 22
    iput p2, p0, Lcom/miui/maml/elements/TextScreenElement;->mTextSize:F

    .line 24
    invoke-direct {p0, p1}, Lcom/miui/maml/elements/TextScreenElement;->load(Lorg/w3c/dom/Element;)V

    .line 27
    return-void
.end method

.method public static synthetic access$000(Lcom/miui/maml/elements/TextScreenElement;)Lcom/miui/maml/folme/PropertyWrapper;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/miui/maml/elements/TextScreenElement;->mTextColorProperty:Lcom/miui/maml/folme/PropertyWrapper;

    .line 3
    return-object p0
.end method

.method public static synthetic access$100(Lcom/miui/maml/elements/TextScreenElement;)Lcom/miui/maml/folme/PropertyWrapper;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/miui/maml/elements/TextScreenElement;->mTextSizeProperty:Lcom/miui/maml/folme/PropertyWrapper;

    .line 3
    return-object p0
.end method

.method public static synthetic access$200(Lcom/miui/maml/elements/TextScreenElement;)Lcom/miui/maml/folme/PropertyWrapper;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/miui/maml/elements/TextScreenElement;->mTextShadowColorProperty:Lcom/miui/maml/folme/PropertyWrapper;

    .line 3
    return-object p0
.end method

.method private getAlignment()Landroid/text/Layout$Alignment;
    .registers 5

    .line 1
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 3
    sget-object v1, Lcom/miui/maml/elements/TextScreenElement$4;->$SwitchMap$com$miui$maml$elements$ScreenElement$Align:[I

    .line 5
    iget-object v2, p0, Lcom/miui/maml/elements/ScreenElement;->mAlign:Lcom/miui/maml/elements/ScreenElement$Align;

    .line 7
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 10
    move-result v2

    .line 11
    aget v1, v1, v2

    .line 13
    const/4 v2, 0x1

    .line 14
    const-string v3, "TextScreenElement"

    .line 16
    if-eq v1, v2, :cond_3e

    .line 18
    const/4 v2, 0x2

    .line 19
    if-eq v1, v2, :cond_3b

    .line 21
    const/4 v2, 0x3

    .line 22
    if-eq v1, v2, :cond_18

    .line 24
    goto :goto_61

    .line 25
    :cond_18
    :try_start_18
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    move-result-object v1

    .line 29
    const-string v2, "ALIGN_RIGHT"

    .line 31
    invoke-static {v1, v0, v2}, Lcom/miui/maml/util/ReflectionHelper;->getFieldValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 34
    move-result-object v1

    .line 35
    check-cast v1, Landroid/text/Layout$Alignment;
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_24} :catch_25

    .line 37
    goto :goto_4a

    .line 38
    :catch_25
    move-exception v1

    .line 39
    const-string v2, "Invoke | getAlignment_ALIGN_RIGHT occur EXCEPTION: "

    .line 41
    invoke-static {v2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    move-result-object v2

    .line 45
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 48
    move-result-object v1

    .line 49
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    move-result-object v1

    .line 56
    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    goto :goto_61

    .line 60
    :cond_3b
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    .line 62
    goto :goto_61

    .line 63
    :cond_3e
    :try_start_3e
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 66
    move-result-object v1

    .line 67
    const-string v2, "ALIGN_LEFT"

    .line 69
    invoke-static {v1, v0, v2}, Lcom/miui/maml/util/ReflectionHelper;->getFieldValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 72
    move-result-object v1

    .line 73
    check-cast v1, Landroid/text/Layout$Alignment;
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_4a} :catch_4c

    .line 75
    :goto_4a
    move-object v0, v1

    .line 76
    goto :goto_61

    .line 77
    :catch_4c
    move-exception v1

    .line 78
    const-string v2, "Invoke | getAlignment_ALIGN_LEFT occur EXCEPTION: "

    .line 80
    invoke-static {v2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    move-result-object v2

    .line 84
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 87
    move-result-object v1

    .line 88
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 94
    move-result-object v1

    .line 95
    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    :goto_61
    return-object v0
.end method

.method private load(Lorg/w3c/dom/Element;)V
    .registers 22

    .line 1
    move-object/from16 v1, p0

    .line 3
    move-object/from16 v2, p1

    .line 5
    if-nez v2, :cond_7

    .line 7
    return-void

    .line 8
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    .line 11
    move-result-object v3

    .line 12
    iget-boolean v0, v1, Lcom/miui/maml/elements/ScreenElement;->mHasName:Z

    .line 14
    const/4 v4, 0x1

    .line 15
    if-eqz v0, :cond_3a

    .line 17
    new-instance v0, Lcom/miui/maml/data/IndexedVariable;

    .line 19
    new-instance v5, Ljava/lang/StringBuilder;

    .line 21
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    iget-object v6, v1, Lcom/miui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    .line 26
    const-string v7, "."

    .line 28
    const-string v8, "text_width"

    .line 30
    invoke-static {v5, v6, v7, v8}, La/a;->n(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 33
    move-result-object v5

    .line 34
    invoke-direct {v0, v5, v3, v4}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    .line 37
    iput-object v0, v1, Lcom/miui/maml/elements/TextScreenElement;->mTextWidthVar:Lcom/miui/maml/data/IndexedVariable;

    .line 39
    new-instance v0, Lcom/miui/maml/data/IndexedVariable;

    .line 41
    new-instance v5, Ljava/lang/StringBuilder;

    .line 43
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 46
    iget-object v6, v1, Lcom/miui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    .line 48
    const-string v8, "text_height"

    .line 50
    invoke-static {v5, v6, v7, v8}, La/a;->n(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 53
    move-result-object v5

    .line 54
    invoke-direct {v0, v5, v3, v4}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    .line 57
    iput-object v0, v1, Lcom/miui/maml/elements/TextScreenElement;->mTextHeightVar:Lcom/miui/maml/data/IndexedVariable;

    .line 59
    :cond_3a
    iget-object v0, v1, Lcom/miui/maml/elements/ScreenElement;->mStyle:Lcom/miui/maml/StylesManager$Style;

    .line 61
    invoke-static {v3, v2, v0}, Lcom/miui/maml/util/TextFormatter;->fromElement(Lcom/miui/maml/data/Variables;Lorg/w3c/dom/Element;Lcom/miui/maml/StylesManager$Style;)Lcom/miui/maml/util/TextFormatter;

    .line 64
    move-result-object v0

    .line 65
    iput-object v0, v1, Lcom/miui/maml/elements/TextScreenElement;->mFormatter:Lcom/miui/maml/util/TextFormatter;

    .line 67
    iget-object v0, v1, Lcom/miui/maml/elements/ScreenElement;->mStyle:Lcom/miui/maml/StylesManager$Style;

    .line 69
    invoke-static {v3, v2, v0}, Lcom/miui/maml/util/ColorParser;->fromElement(Lcom/miui/maml/data/Variables;Lorg/w3c/dom/Element;Lcom/miui/maml/StylesManager$Style;)Lcom/miui/maml/util/ColorParser;

    .line 72
    move-result-object v0

    .line 73
    iput-object v0, v1, Lcom/miui/maml/elements/TextScreenElement;->mColorParser:Lcom/miui/maml/util/ColorParser;

    .line 75
    const/4 v0, 0x0

    .line 76
    const-string v5, "marqueeSpeed"

    .line 78
    invoke-virtual {v1, v2, v5, v0}, Lcom/miui/maml/elements/ScreenElement;->getAttrAsInt(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    .line 81
    move-result v0

    .line 82
    iput v0, v1, Lcom/miui/maml/elements/TextScreenElement;->mMarqueeSpeed:I

    .line 84
    const/high16 v0, 0x3f800000  # 1.0f

    .line 86
    const-string v5, "spacingMult"

    .line 88
    invoke-virtual {v1, v2, v5, v0}, Lcom/miui/maml/elements/ScreenElement;->getAttrAsFloat(Lorg/w3c/dom/Element;Ljava/lang/String;F)F

    .line 91
    move-result v0

    .line 92
    iput v0, v1, Lcom/miui/maml/elements/TextScreenElement;->mSpacingMult:F

    .line 94
    const-string v0, "spacingAdd"

    .line 96
    const/4 v5, 0x0

    .line 97
    invoke-virtual {v1, v2, v0, v5}, Lcom/miui/maml/elements/ScreenElement;->getAttrAsFloat(Lorg/w3c/dom/Element;Ljava/lang/String;F)F

    .line 100
    move-result v0

    .line 101
    iput v0, v1, Lcom/miui/maml/elements/TextScreenElement;->mSpacingAdd:F

    .line 103
    const/4 v0, 0x2

    .line 104
    const-string v6, "marqueeGap"

    .line 106
    invoke-virtual {v1, v2, v6, v0}, Lcom/miui/maml/elements/ScreenElement;->getAttrAsInt(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    .line 109
    move-result v0

    .line 110
    iput v0, v1, Lcom/miui/maml/elements/TextScreenElement;->mMarqueeGap:I

    .line 112
    const-string v0, "multiLine"

    .line 114
    invoke-virtual {v1, v2, v0}, Lcom/miui/maml/elements/ScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    .line 117
    move-result-object v0

    .line 118
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 121
    move-result v0

    .line 122
    iput-boolean v0, v1, Lcom/miui/maml/elements/TextScreenElement;->mMultiLine:Z

    .line 124
    const-string v0, "enableFontScale"

    .line 126
    invoke-virtual {v1, v2, v0}, Lcom/miui/maml/elements/ScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    .line 129
    move-result-object v0

    .line 130
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 133
    move-result v0

    .line 134
    iput-boolean v0, v1, Lcom/miui/maml/elements/TextScreenElement;->mFontScaleEnabled:Z

    .line 136
    const-string v0, "size"

    .line 138
    invoke-virtual {v1, v2, v0}, Lcom/miui/maml/elements/ScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    .line 141
    move-result-object v0

    .line 142
    invoke-static {v3, v0}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    .line 145
    move-result-object v9

    .line 146
    const-string v0, "fontFamily"

    .line 148
    invoke-virtual {v1, v2, v0}, Lcom/miui/maml/elements/ScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    .line 151
    move-result-object v0

    .line 152
    const-string v6, "fontPath"

    .line 154
    invoke-virtual {v1, v2, v6}, Lcom/miui/maml/elements/ScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    .line 157
    move-result-object v6

    .line 158
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 161
    move-result v7

    .line 162
    if-nez v7, :cond_b7

    .line 164
    const-string v6, "fontStyle"

    .line 166
    invoke-virtual {v1, v2, v6}, Lcom/miui/maml/elements/ScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    .line 169
    move-result-object v6

    .line 170
    invoke-static {v6}, Lcom/miui/maml/elements/TextScreenElement;->parseFontStyle(Ljava/lang/String;)I

    .line 173
    move-result v6

    .line 174
    iget-object v7, v1, Lcom/miui/maml/elements/TextScreenElement;->mPaint:Landroid/text/TextPaint;

    .line 176
    invoke-static {v0, v6}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    .line 179
    move-result-object v0

    .line 180
    invoke-virtual {v7, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 183
    goto :goto_110

    .line 184
    :cond_b7
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 187
    move-result v0

    .line 188
    if-nez v0, :cond_ec

    .line 190
    const/4 v7, 0x0

    .line 191
    :try_start_be
    invoke-virtual/range {p0 .. p0}, Lcom/miui/maml/elements/ScreenElement;->getContext()Lcom/miui/maml/ScreenContext;

    .line 194
    move-result-object v0

    .line 195
    iget-object v0, v0, Lcom/miui/maml/ScreenContext;->mContext:Landroid/content/Context;

    .line 197
    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    .line 200
    move-result-object v0

    .line 201
    invoke-static {v0, v6}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    .line 204
    move-result-object v7
    :try_end_cc
    .catch Ljava/lang/Exception; {:try_start_be .. :try_end_cc} :catch_cd

    .line 205
    goto :goto_e4

    .line 206
    :catch_cd
    move-exception v0

    .line 207
    new-instance v6, Ljava/lang/StringBuilder;

    .line 209
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 212
    const-string v8, "create typeface from asset fail :"

    .line 214
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 220
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 223
    move-result-object v0

    .line 224
    const-string v6, "TextScreenElement"

    .line 226
    invoke-static {v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    :goto_e4
    if-eqz v7, :cond_110

    .line 231
    iget-object v0, v1, Lcom/miui/maml/elements/TextScreenElement;->mPaint:Landroid/text/TextPaint;

    .line 233
    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 236
    goto :goto_110

    .line 237
    :cond_ec
    const-string v0, "bold"

    .line 239
    invoke-virtual {v1, v2, v0}, Lcom/miui/maml/elements/ScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    .line 242
    move-result-object v0

    .line 243
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 246
    move-result v0

    .line 247
    iget-object v6, v1, Lcom/miui/maml/elements/TextScreenElement;->mPaint:Landroid/text/TextPaint;

    .line 249
    invoke-virtual {v6, v0}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 252
    iget-object v0, v1, Lcom/miui/maml/elements/TextScreenElement;->mPaint:Landroid/text/TextPaint;

    .line 254
    invoke-virtual/range {p0 .. p0}, Lcom/miui/maml/elements/ScreenElement;->getContext()Lcom/miui/maml/ScreenContext;

    .line 257
    move-result-object v6

    .line 258
    iget-object v6, v6, Lcom/miui/maml/ScreenContext;->mContext:Landroid/content/Context;

    .line 260
    iget-object v7, v1, Lcom/miui/maml/elements/TextScreenElement;->mPaint:Landroid/text/TextPaint;

    .line 262
    invoke-virtual {v7}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    .line 265
    move-result-object v7

    .line 266
    invoke-static {v6, v7}, Lcom/miui/maml/util/HideSdkDependencyUtils;->TypefaceUtils_replaceTypeface(Landroid/content/Context;Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 269
    move-result-object v6

    .line 270
    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 273
    :cond_110
    :goto_110
    iget-object v0, v1, Lcom/miui/maml/elements/TextScreenElement;->mPaint:Landroid/text/TextPaint;

    .line 275
    invoke-virtual/range {p0 .. p0}, Lcom/miui/maml/elements/TextScreenElement;->getColor()I

    .line 278
    move-result v6

    .line 279
    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 282
    iget-object v0, v1, Lcom/miui/maml/elements/TextScreenElement;->mPaint:Landroid/text/TextPaint;

    .line 284
    const-wide/high16 v6, 0x4032000000000000L  # 18.0

    .line 286
    invoke-virtual {v1, v6, v7}, Lcom/miui/maml/elements/ScreenElement;->scale(D)F

    .line 289
    move-result v6

    .line 290
    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 293
    iget-object v0, v1, Lcom/miui/maml/elements/TextScreenElement;->mPaint:Landroid/text/TextPaint;

    .line 295
    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 298
    const-string v0, "shadowRadius"

    .line 300
    invoke-virtual {v1, v2, v0, v5}, Lcom/miui/maml/elements/ScreenElement;->getAttrAsFloat(Lorg/w3c/dom/Element;Ljava/lang/String;F)F

    .line 303
    move-result v0

    .line 304
    iput v0, v1, Lcom/miui/maml/elements/TextScreenElement;->mShadowRadius:F

    .line 306
    const-string v0, "shadowDx"

    .line 308
    invoke-virtual {v1, v2, v0, v5}, Lcom/miui/maml/elements/ScreenElement;->getAttrAsFloat(Lorg/w3c/dom/Element;Ljava/lang/String;F)F

    .line 311
    move-result v0

    .line 312
    iput v0, v1, Lcom/miui/maml/elements/TextScreenElement;->mShadowDx:F

    .line 314
    const-string v0, "shadowDy"

    .line 316
    invoke-virtual {v1, v2, v0, v5}, Lcom/miui/maml/elements/ScreenElement;->getAttrAsFloat(Lorg/w3c/dom/Element;Ljava/lang/String;F)F

    .line 319
    move-result v0

    .line 320
    iput v0, v1, Lcom/miui/maml/elements/TextScreenElement;->mShadowDy:F

    .line 322
    iget-object v0, v1, Lcom/miui/maml/elements/ScreenElement;->mStyle:Lcom/miui/maml/StylesManager$Style;

    .line 324
    const-string v4, "shadowColor"

    .line 326
    invoke-static {v3, v2, v4, v0}, Lcom/miui/maml/util/ColorParser;->fromElement(Lcom/miui/maml/data/Variables;Lorg/w3c/dom/Element;Ljava/lang/String;Lcom/miui/maml/StylesManager$Style;)Lcom/miui/maml/util/ColorParser;

    .line 329
    move-result-object v0

    .line 330
    iput-object v0, v1, Lcom/miui/maml/elements/TextScreenElement;->mShadowColorParser:Lcom/miui/maml/util/ColorParser;

    .line 332
    iget-object v0, v1, Lcom/miui/maml/elements/TextScreenElement;->mPaint:Landroid/text/TextPaint;

    .line 334
    iget v2, v1, Lcom/miui/maml/elements/TextScreenElement;->mShadowRadius:F

    .line 336
    iget v3, v1, Lcom/miui/maml/elements/TextScreenElement;->mShadowDx:F

    .line 338
    iget v4, v1, Lcom/miui/maml/elements/TextScreenElement;->mShadowDy:F

    .line 340
    invoke-virtual/range {p0 .. p0}, Lcom/miui/maml/elements/TextScreenElement;->getShadowColor()I

    .line 343
    move-result v5

    .line 344
    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 347
    new-instance v0, Lcom/miui/maml/folme/PropertyWrapper;

    .line 349
    new-instance v2, Ljava/lang/StringBuilder;

    .line 351
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 354
    iget-object v3, v1, Lcom/miui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    .line 356
    const-string v4, ".textColor"

    .line 358
    invoke-static {v2, v3, v4}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 361
    move-result-object v7

    .line 362
    invoke-virtual/range {p0 .. p0}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    .line 365
    move-result-object v8

    .line 366
    invoke-virtual/range {p0 .. p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->isInFolmeMode()Z

    .line 369
    move-result v10

    .line 370
    const-wide/high16 v11, 0x4032000000000000L  # 18.0

    .line 372
    move-object v6, v0

    .line 373
    invoke-direct/range {v6 .. v12}, Lcom/miui/maml/folme/PropertyWrapper;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Lcom/miui/maml/data/Expression;ZD)V

    .line 376
    iput-object v0, v1, Lcom/miui/maml/elements/TextScreenElement;->mTextSizeProperty:Lcom/miui/maml/folme/PropertyWrapper;

    .line 378
    new-instance v0, Lcom/miui/maml/folme/PropertyWrapper;

    .line 380
    new-instance v2, Ljava/lang/StringBuilder;

    .line 382
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 385
    iget-object v3, v1, Lcom/miui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    .line 387
    const-string v4, ".textSize"

    .line 389
    invoke-static {v2, v3, v4}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 392
    move-result-object v14

    .line 393
    invoke-virtual/range {p0 .. p0}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    .line 396
    move-result-object v15

    .line 397
    const/16 v16, 0x0

    .line 399
    invoke-virtual/range {p0 .. p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->isInFolmeMode()Z

    .line 402
    move-result v17

    .line 403
    iget-object v2, v1, Lcom/miui/maml/elements/TextScreenElement;->mColorParser:Lcom/miui/maml/util/ColorParser;

    .line 405
    invoke-virtual {v2}, Lcom/miui/maml/util/ColorParser;->getColor()I

    .line 408
    move-result v2

    .line 409
    int-to-double v2, v2

    .line 410
    move-object v13, v0

    .line 411
    move-wide/from16 v18, v2

    .line 413
    invoke-direct/range {v13 .. v19}, Lcom/miui/maml/folme/PropertyWrapper;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Lcom/miui/maml/data/Expression;ZD)V

    .line 416
    iput-object v0, v1, Lcom/miui/maml/elements/TextScreenElement;->mTextColorProperty:Lcom/miui/maml/folme/PropertyWrapper;

    .line 418
    new-instance v0, Lcom/miui/maml/folme/PropertyWrapper;

    .line 420
    new-instance v2, Ljava/lang/StringBuilder;

    .line 422
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 425
    iget-object v3, v1, Lcom/miui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    .line 427
    const-string v4, ".textShadowColor"

    .line 429
    invoke-static {v2, v3, v4}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 432
    move-result-object v5

    .line 433
    invoke-virtual/range {p0 .. p0}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    .line 436
    move-result-object v6

    .line 437
    const/4 v7, 0x0

    .line 438
    invoke-virtual/range {p0 .. p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->isInFolmeMode()Z

    .line 441
    move-result v8

    .line 442
    iget-object v2, v1, Lcom/miui/maml/elements/TextScreenElement;->mShadowColorParser:Lcom/miui/maml/util/ColorParser;

    .line 444
    invoke-virtual {v2}, Lcom/miui/maml/util/ColorParser;->getColor()I

    .line 447
    move-result v2

    .line 448
    int-to-double v9, v2

    .line 449
    move-object v4, v0

    .line 450
    invoke-direct/range {v4 .. v10}, Lcom/miui/maml/folme/PropertyWrapper;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Lcom/miui/maml/data/Expression;ZD)V

    .line 453
    iput-object v0, v1, Lcom/miui/maml/elements/TextScreenElement;->mTextShadowColorProperty:Lcom/miui/maml/folme/PropertyWrapper;

    .line 455
    return-void
.end method

.method private static parseFontStyle(Ljava/lang/String;)I
    .registers 3

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_2e

    .line 8
    const-string v0, "normal"

    .line 10
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_10

    .line 16
    goto :goto_2e

    .line 17
    :cond_10
    const-string v0, "bold"

    .line 19
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_1a

    .line 25
    const/4 p0, 0x1

    .line 26
    return p0

    .line 27
    :cond_1a
    const-string v0, "italic"

    .line 29
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_24

    .line 35
    const/4 p0, 0x2

    .line 36
    return p0

    .line 37
    :cond_24
    const-string v0, "bold_italic"

    .line 39
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 42
    move-result p0

    .line 43
    if-eqz p0, :cond_2e

    .line 45
    const/4 p0, 0x3

    .line 46
    return p0

    .line 47
    :cond_2e
    :goto_2e
    return v1
.end method

.method private updateTextSize()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/TextScreenElement;->mTextSizeProperty:Lcom/miui/maml/folme/PropertyWrapper;

    .line 3
    invoke-virtual {v0}, Lcom/miui/maml/folme/PropertyWrapper;->getValue()D

    .line 6
    move-result-wide v0

    .line 7
    invoke-virtual {p0, v0, v1}, Lcom/miui/maml/elements/ScreenElement;->scale(D)F

    .line 10
    move-result v0

    .line 11
    iput v0, p0, Lcom/miui/maml/elements/TextScreenElement;->mTextSize:F

    .line 13
    iget-boolean v1, p0, Lcom/miui/maml/elements/TextScreenElement;->mFontScaleEnabled:Z

    .line 15
    if-eqz v1, :cond_19

    .line 17
    iget-object v1, p0, Lcom/miui/maml/elements/ScreenElement;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 19
    invoke-virtual {v1}, Lcom/miui/maml/ScreenElementRoot;->getFontScale()F

    .line 22
    move-result v1

    .line 23
    mul-float/2addr v1, v0

    .line 24
    iput v1, p0, Lcom/miui/maml/elements/TextScreenElement;->mTextSize:F

    .line 26
    :cond_19
    iget-object v0, p0, Lcom/miui/maml/elements/TextScreenElement;->mPaint:Landroid/text/TextPaint;

    .line 28
    iget v1, p0, Lcom/miui/maml/elements/TextScreenElement;->mTextSize:F

    .line 30
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 33
    return-void
.end method

.method private updateTextWidth()V
    .registers 5

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/miui/maml/elements/TextScreenElement;->mTextWidth:F

    .line 4
    iget-object v0, p0, Lcom/miui/maml/elements/TextScreenElement;->mText:Ljava/lang/String;

    .line 6
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_38

    .line 12
    iget-boolean v0, p0, Lcom/miui/maml/elements/TextScreenElement;->mMultiLine:Z

    .line 14
    if-eqz v0, :cond_2e

    .line 16
    iget-object v0, p0, Lcom/miui/maml/elements/TextScreenElement;->mText:Ljava/lang/String;

    .line 18
    const-string v1, "\n"

    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 23
    move-result-object v0

    .line 24
    const/4 v1, 0x0

    .line 25
    :goto_18
    array-length v2, v0

    .line 26
    if-ge v1, v2, :cond_38

    .line 28
    iget-object v2, p0, Lcom/miui/maml/elements/TextScreenElement;->mPaint:Landroid/text/TextPaint;

    .line 30
    aget-object v3, v0, v1

    .line 32
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    .line 35
    move-result v2

    .line 36
    iget v3, p0, Lcom/miui/maml/elements/TextScreenElement;->mTextWidth:F

    .line 38
    cmpl-float v3, v2, v3

    .line 40
    if-lez v3, :cond_2b

    .line 42
    iput v2, p0, Lcom/miui/maml/elements/TextScreenElement;->mTextWidth:F

    .line 44
    :cond_2b
    add-int/lit8 v1, v1, 0x1

    .line 46
    goto :goto_18

    .line 47
    :cond_2e
    iget-object v0, p0, Lcom/miui/maml/elements/TextScreenElement;->mPaint:Landroid/text/TextPaint;

    .line 49
    iget-object v1, p0, Lcom/miui/maml/elements/TextScreenElement;->mText:Ljava/lang/String;

    .line 51
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    .line 54
    move-result v0

    .line 55
    iput v0, p0, Lcom/miui/maml/elements/TextScreenElement;->mTextWidth:F

    .line 57
    :cond_38
    iget-boolean v0, p0, Lcom/miui/maml/elements/ScreenElement;->mHasName:Z

    .line 59
    if-eqz v0, :cond_48

    .line 61
    iget-object v0, p0, Lcom/miui/maml/elements/TextScreenElement;->mTextWidthVar:Lcom/miui/maml/data/IndexedVariable;

    .line 63
    iget v1, p0, Lcom/miui/maml/elements/TextScreenElement;->mTextWidth:F

    .line 65
    float-to-double v1, v1

    .line 66
    invoke-virtual {p0, v1, v2}, Lcom/miui/maml/elements/ScreenElement;->descale(D)D

    .line 69
    move-result-wide v1

    .line 70
    invoke-virtual {v0, v1, v2}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 73
    :cond_48
    return-void
.end method


# virtual methods
.method public doRender(Landroid/graphics/Canvas;)V
    .registers 16

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/TextScreenElement;->mText:Ljava/lang/String;

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_9

    .line 9
    return-void

    .line 10
    :cond_9
    iget-object v0, p0, Lcom/miui/maml/elements/TextScreenElement;->mPaint:Landroid/text/TextPaint;

    .line 12
    invoke-virtual {p0}, Lcom/miui/maml/elements/TextScreenElement;->getColor()I

    .line 15
    move-result v1

    .line 16
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 19
    iget-object v0, p0, Lcom/miui/maml/elements/TextScreenElement;->mPaint:Landroid/text/TextPaint;

    .line 21
    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    .line 24
    move-result v1

    .line 25
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getAlpha()I

    .line 28
    move-result v2

    .line 29
    invoke-static {v1, v2}, Lcom/miui/maml/util/Utils;->mixAlpha(II)I

    .line 32
    move-result v1

    .line 33
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 36
    iget-object v0, p0, Lcom/miui/maml/elements/TextScreenElement;->mPaint:Landroid/text/TextPaint;

    .line 38
    iget v1, p0, Lcom/miui/maml/elements/TextScreenElement;->mShadowRadius:F

    .line 40
    iget v2, p0, Lcom/miui/maml/elements/TextScreenElement;->mShadowDx:F

    .line 42
    iget v3, p0, Lcom/miui/maml/elements/TextScreenElement;->mShadowDy:F

    .line 44
    invoke-virtual {p0}, Lcom/miui/maml/elements/TextScreenElement;->getShadowColor()I

    .line 47
    move-result v4

    .line 48
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 51
    invoke-virtual {p0}, Lcom/miui/maml/elements/TextScreenElement;->getWidth()F

    .line 54
    move-result v0

    .line 55
    const/4 v1, 0x0

    .line 56
    cmpl-float v2, v0, v1

    .line 58
    const/4 v3, 0x1

    .line 59
    const/4 v4, 0x0

    .line 60
    if-ltz v2, :cond_3f

    .line 62
    move v2, v3

    .line 63
    goto :goto_40

    .line 64
    :cond_3f
    move v2, v4

    .line 65
    :goto_40
    cmpg-float v5, v0, v1

    .line 67
    if-ltz v5, :cond_4a

    .line 69
    iget v5, p0, Lcom/miui/maml/elements/TextScreenElement;->mTextWidth:F

    .line 71
    cmpl-float v5, v0, v5

    .line 73
    if-lez v5, :cond_4c

    .line 75
    :cond_4a
    iget v0, p0, Lcom/miui/maml/elements/TextScreenElement;->mTextWidth:F

    .line 77
    :cond_4c
    invoke-virtual {p0}, Lcom/miui/maml/elements/TextScreenElement;->getHeight()F

    .line 80
    move-result v5

    .line 81
    iget-object v6, p0, Lcom/miui/maml/elements/TextScreenElement;->mPaint:Landroid/text/TextPaint;

    .line 83
    invoke-virtual {v6}, Landroid/graphics/Paint;->getTextSize()F

    .line 86
    move-result v6

    .line 87
    cmpg-float v7, v5, v1

    .line 89
    if-gez v7, :cond_5c

    .line 91
    iget v5, p0, Lcom/miui/maml/elements/TextScreenElement;->mTextHeight:F

    .line 93
    :cond_5c
    invoke-virtual {p0, v1, v0}, Lcom/miui/maml/elements/ScreenElement;->getLeft(FF)F

    .line 96
    move-result v7

    .line 97
    invoke-virtual {p0, v1, v5}, Lcom/miui/maml/elements/ScreenElement;->getTop(FF)F

    .line 100
    move-result v8

    .line 101
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 104
    iget v9, p0, Lcom/miui/maml/elements/TextScreenElement;->mShadowRadius:F

    .line 106
    cmpl-float v10, v9, v1

    .line 108
    if-eqz v10, :cond_90

    .line 110
    iget v10, p0, Lcom/miui/maml/elements/TextScreenElement;->mShadowDx:F

    .line 112
    sub-float/2addr v10, v9

    .line 113
    invoke-static {v1, v10}, Ljava/lang/Math;->min(FF)F

    .line 116
    move-result v9

    .line 117
    iget v10, p0, Lcom/miui/maml/elements/TextScreenElement;->mShadowDx:F

    .line 119
    iget v11, p0, Lcom/miui/maml/elements/TextScreenElement;->mShadowRadius:F

    .line 121
    add-float/2addr v10, v11

    .line 122
    invoke-static {v1, v10}, Ljava/lang/Math;->max(FF)F

    .line 125
    move-result v10

    .line 126
    iget v11, p0, Lcom/miui/maml/elements/TextScreenElement;->mShadowDy:F

    .line 128
    iget v12, p0, Lcom/miui/maml/elements/TextScreenElement;->mShadowRadius:F

    .line 130
    sub-float/2addr v11, v12

    .line 131
    invoke-static {v1, v11}, Ljava/lang/Math;->min(FF)F

    .line 134
    move-result v11

    .line 135
    iget v12, p0, Lcom/miui/maml/elements/TextScreenElement;->mShadowDy:F

    .line 137
    iget v13, p0, Lcom/miui/maml/elements/TextScreenElement;->mShadowRadius:F

    .line 139
    add-float/2addr v12, v13

    .line 140
    invoke-static {v1, v12}, Ljava/lang/Math;->max(FF)F

    .line 143
    move-result v12

    .line 144
    goto :goto_94

    .line 145
    :cond_90
    move v9, v1

    .line 146
    move v10, v9

    .line 147
    move v11, v10

    .line 148
    move v12, v11

    .line 149
    :goto_94
    invoke-virtual {p1, v7, v8}, Landroid/graphics/Canvas;->translate(FF)V

    .line 152
    if-eqz v2, :cond_9a

    .line 154
    move v9, v1

    .line 155
    :cond_9a
    if-eqz v2, :cond_9d

    .line 157
    move v10, v1

    .line 158
    :cond_9d
    add-float/2addr v10, v0

    .line 159
    add-float/2addr v5, v12

    .line 160
    invoke-virtual {p1, v9, v11, v10, v5}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 163
    iget-object v2, p0, Lcom/miui/maml/elements/TextScreenElement;->mTextLayout:Landroid/text/StaticLayout;

    .line 165
    if-eqz v2, :cond_f9

    .line 167
    invoke-virtual {v2}, Landroid/text/StaticLayout;->getLineCount()I

    .line 170
    move-result v2

    .line 171
    if-ne v2, v3, :cond_f4

    .line 173
    iget-boolean v2, p0, Lcom/miui/maml/elements/TextScreenElement;->mShouldMarquee:Z

    .line 175
    if-eqz v2, :cond_f4

    .line 177
    iget-object v2, p0, Lcom/miui/maml/elements/TextScreenElement;->mTextLayout:Landroid/text/StaticLayout;

    .line 179
    invoke-virtual {v2, v4}, Landroid/text/StaticLayout;->getLineStart(I)I

    .line 182
    move-result v9

    .line 183
    iget-object v2, p0, Lcom/miui/maml/elements/TextScreenElement;->mTextLayout:Landroid/text/StaticLayout;

    .line 185
    invoke-virtual {v2, v4}, Landroid/text/Layout;->getLineEnd(I)I

    .line 188
    move-result v10

    .line 189
    iget-object v2, p0, Lcom/miui/maml/elements/TextScreenElement;->mTextLayout:Landroid/text/StaticLayout;

    .line 191
    invoke-virtual {v2, v4}, Landroid/text/StaticLayout;->getLineTop(I)I

    .line 194
    move-result v2

    .line 195
    iget-object v3, p0, Lcom/miui/maml/elements/TextScreenElement;->mTextLayout:Landroid/text/StaticLayout;

    .line 197
    invoke-virtual {v3, v4}, Landroid/text/Layout;->getLineLeft(I)F

    .line 200
    move-result v3

    .line 201
    iget-object v8, p0, Lcom/miui/maml/elements/TextScreenElement;->mText:Ljava/lang/String;

    .line 203
    iget v4, p0, Lcom/miui/maml/elements/TextScreenElement;->mMarqueePos:F

    .line 205
    add-float v11, v3, v4

    .line 207
    int-to-float v2, v2

    .line 208
    add-float/2addr v6, v2

    .line 209
    iget-object v13, p0, Lcom/miui/maml/elements/TextScreenElement;->mPaint:Landroid/text/TextPaint;

    .line 211
    move-object v7, p1

    .line 212
    move v12, v6

    .line 213
    invoke-virtual/range {v7 .. v13}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    .line 216
    iget v2, p0, Lcom/miui/maml/elements/TextScreenElement;->mMarqueePos:F

    .line 218
    cmpl-float v1, v2, v1

    .line 220
    if-eqz v1, :cond_f9

    .line 222
    iget v1, p0, Lcom/miui/maml/elements/TextScreenElement;->mTextWidth:F

    .line 224
    add-float/2addr v2, v1

    .line 225
    iget v1, p0, Lcom/miui/maml/elements/TextScreenElement;->mTextSize:F

    .line 227
    iget v4, p0, Lcom/miui/maml/elements/TextScreenElement;->mMarqueeGap:I

    .line 229
    int-to-float v4, v4

    .line 230
    mul-float/2addr v1, v4

    .line 231
    add-float/2addr v1, v2

    .line 232
    cmpg-float v0, v1, v0

    .line 234
    if-gez v0, :cond_f9

    .line 236
    iget-object v0, p0, Lcom/miui/maml/elements/TextScreenElement;->mText:Ljava/lang/String;

    .line 238
    add-float/2addr v3, v1

    .line 239
    iget-object v1, p0, Lcom/miui/maml/elements/TextScreenElement;->mPaint:Landroid/text/TextPaint;

    .line 241
    invoke-virtual {p1, v0, v3, v6, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 244
    goto :goto_f9

    .line 245
    :cond_f4
    iget-object v0, p0, Lcom/miui/maml/elements/TextScreenElement;->mTextLayout:Landroid/text/StaticLayout;

    .line 247
    invoke-virtual {v0, p1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    .line 250
    :cond_f9
    :goto_f9
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 253
    return-void
.end method

.method public doTick(J)V
    .registers 21

    .line 1
    move-object/from16 v1, p0

    .line 3
    move-wide/from16 v2, p1

    .line 5
    sget-object v4, Lcom/miui/maml/elements/TextScreenElement;->mLock:Ljava/lang/Object;

    .line 7
    monitor-enter v4

    .line 8
    :try_start_7
    invoke-super/range {p0 .. p2}, Lcom/miui/maml/elements/AnimatedScreenElement;->doTick(J)V

    .line 11
    invoke-virtual/range {p0 .. p0}, Lcom/miui/maml/elements/ScreenElement;->isVisible()Z

    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_12

    .line 17
    monitor-exit v4

    .line 18
    return-void

    .line 19
    :cond_12
    const/4 v0, 0x0

    .line 20
    iput-boolean v0, v1, Lcom/miui/maml/elements/TextScreenElement;->mShouldMarquee:Z

    .line 22
    iget-object v5, v1, Lcom/miui/maml/elements/TextScreenElement;->mText:Ljava/lang/String;

    .line 24
    invoke-virtual/range {p0 .. p0}, Lcom/miui/maml/elements/TextScreenElement;->getText()Ljava/lang/String;

    .line 27
    move-result-object v6

    .line 28
    iput-object v6, v1, Lcom/miui/maml/elements/TextScreenElement;->mText:Ljava/lang/String;

    .line 30
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 33
    move-result v6

    .line 34
    if-eqz v6, :cond_2b

    .line 36
    const/4 v0, 0x0

    .line 37
    iput-object v0, v1, Lcom/miui/maml/elements/TextScreenElement;->mTextLayout:Landroid/text/StaticLayout;

    .line 39
    invoke-direct/range {p0 .. p0}, Lcom/miui/maml/elements/TextScreenElement;->updateTextWidth()V

    .line 42
    monitor-exit v4

    .line 43
    return-void

    .line 44
    :cond_2b
    iget v6, v1, Lcom/miui/maml/elements/TextScreenElement;->mTextSize:F

    .line 46
    invoke-direct/range {p0 .. p0}, Lcom/miui/maml/elements/TextScreenElement;->updateTextSize()V

    .line 49
    iget-object v7, v1, Lcom/miui/maml/elements/TextScreenElement;->mText:Ljava/lang/String;

    .line 51
    invoke-static {v5, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 54
    move-result v5

    .line 55
    const/4 v7, 0x1

    .line 56
    if-eqz v5, :cond_42

    .line 58
    iget v5, v1, Lcom/miui/maml/elements/TextScreenElement;->mTextSize:F

    .line 60
    cmpl-float v5, v6, v5

    .line 62
    if-eqz v5, :cond_40

    .line 64
    goto :goto_42

    .line 65
    :cond_40
    move v5, v0

    .line 66
    goto :goto_43

    .line 67
    :cond_42
    :goto_42
    move v5, v7

    .line 68
    :goto_43
    if-eqz v5, :cond_48

    .line 70
    invoke-direct/range {p0 .. p0}, Lcom/miui/maml/elements/TextScreenElement;->updateTextWidth()V

    .line 73
    :cond_48
    invoke-virtual/range {p0 .. p0}, Lcom/miui/maml/elements/TextScreenElement;->getWidth()F

    .line 76
    move-result v6

    .line 77
    iget-boolean v8, v1, Lcom/miui/maml/elements/TextScreenElement;->mMultiLine:Z

    .line 79
    if-nez v8, :cond_5b

    .line 81
    iget v9, v1, Lcom/miui/maml/elements/TextScreenElement;->mMarqueeSpeed:I

    .line 83
    if-lez v9, :cond_5b

    .line 85
    iget v9, v1, Lcom/miui/maml/elements/TextScreenElement;->mTextWidth:F

    .line 87
    cmpl-float v9, v9, v6

    .line 89
    if-lez v9, :cond_5b

    .line 91
    move v0, v7

    .line 92
    :cond_5b
    if-eqz v8, :cond_63

    .line 94
    iget v8, v1, Lcom/miui/maml/elements/TextScreenElement;->mTextWidth:F

    .line 96
    cmpl-float v8, v6, v8

    .line 98
    if-lez v8, :cond_65

    .line 100
    :cond_63
    iget v6, v1, Lcom/miui/maml/elements/TextScreenElement;->mTextWidth:F

    .line 102
    :cond_65
    iget-object v8, v1, Lcom/miui/maml/elements/TextScreenElement;->mTextLayout:Landroid/text/StaticLayout;

    .line 104
    const v9, 0x7f7fffff  # Float.MAX_VALUE

    .line 107
    if-eqz v8, :cond_74

    .line 109
    if-nez v5, :cond_74

    .line 111
    iget v5, v1, Lcom/miui/maml/elements/TextScreenElement;->mLayoutWidth:F

    .line 113
    cmpl-float v5, v5, v6

    .line 115
    if-eqz v5, :cond_b1

    .line 117
    :cond_74
    iput v6, v1, Lcom/miui/maml/elements/TextScreenElement;->mLayoutWidth:F

    .line 119
    new-instance v5, Landroid/text/StaticLayout;

    .line 121
    iget-object v11, v1, Lcom/miui/maml/elements/TextScreenElement;->mText:Ljava/lang/String;

    .line 123
    iget-object v12, v1, Lcom/miui/maml/elements/TextScreenElement;->mPaint:Landroid/text/TextPaint;

    .line 125
    iget v6, v1, Lcom/miui/maml/elements/TextScreenElement;->mLayoutWidth:F

    .line 127
    float-to-double v13, v6

    .line 128
    invoke-static {v13, v14}, Ljava/lang/Math;->ceil(D)D

    .line 131
    move-result-wide v13

    .line 132
    double-to-int v13, v13

    .line 133
    invoke-direct/range {p0 .. p0}, Lcom/miui/maml/elements/TextScreenElement;->getAlignment()Landroid/text/Layout$Alignment;

    .line 136
    move-result-object v14

    .line 137
    iget v15, v1, Lcom/miui/maml/elements/TextScreenElement;->mSpacingMult:F

    .line 139
    iget v6, v1, Lcom/miui/maml/elements/TextScreenElement;->mSpacingAdd:F

    .line 141
    const/16 v17, 0x0

    .line 143
    move-object v10, v5

    .line 144
    move/from16 v16, v6

    .line 146
    invoke-direct/range {v10 .. v17}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 149
    iput-object v5, v1, Lcom/miui/maml/elements/TextScreenElement;->mTextLayout:Landroid/text/StaticLayout;

    .line 151
    invoke-virtual {v5}, Landroid/text/StaticLayout;->getLineCount()I

    .line 154
    move-result v6

    .line 155
    invoke-virtual {v5, v6}, Landroid/text/StaticLayout;->getLineTop(I)I

    .line 158
    move-result v5

    .line 159
    int-to-float v5, v5

    .line 160
    iput v5, v1, Lcom/miui/maml/elements/TextScreenElement;->mTextHeight:F

    .line 162
    iget-boolean v6, v1, Lcom/miui/maml/elements/ScreenElement;->mHasName:Z

    .line 164
    if-eqz v6, :cond_af

    .line 166
    iget-object v6, v1, Lcom/miui/maml/elements/TextScreenElement;->mTextHeightVar:Lcom/miui/maml/data/IndexedVariable;

    .line 168
    float-to-double v10, v5

    .line 169
    invoke-virtual {v1, v10, v11}, Lcom/miui/maml/elements/ScreenElement;->descale(D)D

    .line 172
    move-result-wide v10

    .line 173
    invoke-virtual {v6, v10, v11}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 176
    :cond_af
    iput v9, v1, Lcom/miui/maml/elements/TextScreenElement;->mMarqueePos:F

    .line 178
    :cond_b1
    if-eqz v0, :cond_e2

    .line 180
    iget v0, v1, Lcom/miui/maml/elements/TextScreenElement;->mMarqueePos:F

    .line 182
    cmpl-float v5, v0, v9

    .line 184
    if-nez v5, :cond_be

    .line 186
    const/high16 v0, 0x42480000  # 50.0f

    .line 188
    iput v0, v1, Lcom/miui/maml/elements/TextScreenElement;->mMarqueePos:F

    .line 190
    goto :goto_de

    .line 191
    :cond_be
    iget v5, v1, Lcom/miui/maml/elements/TextScreenElement;->mMarqueeSpeed:I

    .line 193
    int-to-long v5, v5

    .line 194
    iget-wide v8, v1, Lcom/miui/maml/elements/TextScreenElement;->mPreviousTime:J

    .line 196
    sub-long v8, v2, v8

    .line 198
    mul-long/2addr v8, v5

    .line 199
    long-to-float v5, v8

    .line 200
    const/high16 v6, 0x447a0000  # 1000.0f

    .line 202
    div-float/2addr v5, v6

    .line 203
    sub-float/2addr v0, v5

    .line 204
    iput v0, v1, Lcom/miui/maml/elements/TextScreenElement;->mMarqueePos:F

    .line 206
    iget v5, v1, Lcom/miui/maml/elements/TextScreenElement;->mTextWidth:F

    .line 208
    neg-float v6, v5

    .line 209
    cmpg-float v6, v0, v6

    .line 211
    if-gez v6, :cond_de

    .line 213
    iget v6, v1, Lcom/miui/maml/elements/TextScreenElement;->mTextSize:F

    .line 215
    iget v8, v1, Lcom/miui/maml/elements/TextScreenElement;->mMarqueeGap:I

    .line 217
    int-to-float v8, v8

    .line 218
    mul-float/2addr v6, v8

    .line 219
    add-float/2addr v6, v5

    .line 220
    add-float/2addr v6, v0

    .line 221
    iput v6, v1, Lcom/miui/maml/elements/TextScreenElement;->mMarqueePos:F

    .line 223
    :cond_de
    :goto_de
    iput-wide v2, v1, Lcom/miui/maml/elements/TextScreenElement;->mPreviousTime:J

    .line 225
    iput-boolean v7, v1, Lcom/miui/maml/elements/TextScreenElement;->mShouldMarquee:Z

    .line 227
    :cond_e2
    monitor-exit v4
    :try_end_e3
    .catchall {:try_start_7 .. :try_end_e3} :catchall_ef

    .line 228
    iget-boolean v0, v1, Lcom/miui/maml/elements/TextScreenElement;->mShouldMarquee:Z

    .line 230
    if-eqz v0, :cond_ea

    .line 232
    const/high16 v0, 0x42340000  # 45.0f

    .line 234
    goto :goto_eb

    .line 235
    :cond_ea
    const/4 v0, 0x0

    .line 236
    :goto_eb
    invoke-virtual {v1, v0}, Lcom/miui/maml/elements/ScreenElement;->requestFramerate(F)V

    .line 239
    return-void

    .line 240
    :catchall_ef
    move-exception v0

    .line 241
    :try_start_f0
    monitor-exit v4
    :try_end_f1
    .catchall {:try_start_f0 .. :try_end_f1} :catchall_ef

    .line 242
    throw v0
.end method

.method public finish()V
    .registers 2

    .line 1
    invoke-super {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->finish()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/miui/maml/elements/TextScreenElement;->mText:Ljava/lang/String;

    .line 7
    iput-object v0, p0, Lcom/miui/maml/elements/TextScreenElement;->mSetText:Ljava/lang/String;

    .line 9
    const v0, 0x7f7fffff  # Float.MAX_VALUE

    .line 12
    iput v0, p0, Lcom/miui/maml/elements/TextScreenElement;->mMarqueePos:F

    .line 14
    return-void
.end method

.method public getColor()I
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->isInFolmeMode()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_f

    .line 7
    iget-object v0, p0, Lcom/miui/maml/elements/TextScreenElement;->mTextColorProperty:Lcom/miui/maml/folme/PropertyWrapper;

    .line 9
    invoke-virtual {v0}, Lcom/miui/maml/folme/PropertyWrapper;->getValue()D

    .line 12
    move-result-wide v0

    .line 13
    double-to-long v0, v0

    .line 14
    long-to-int v0, v0

    .line 15
    return v0

    .line 16
    :cond_f
    iget-object v0, p0, Lcom/miui/maml/elements/TextScreenElement;->mColorParser:Lcom/miui/maml/util/ColorParser;

    .line 18
    invoke-virtual {v0}, Lcom/miui/maml/util/ColorParser;->getColor()I

    .line 21
    move-result v0

    .line 22
    return v0
.end method

.method public getFormat()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/TextScreenElement;->mFormatter:Lcom/miui/maml/util/TextFormatter;

    .line 3
    invoke-virtual {v0}, Lcom/miui/maml/util/TextFormatter;->getFormat()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getHeight()F
    .registers 3

    .line 1
    invoke-super {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getHeight()F

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    cmpg-float v1, v0, v1

    .line 8
    if-gtz v1, :cond_b

    .line 10
    iget v0, p0, Lcom/miui/maml/elements/TextScreenElement;->mTextHeight:F

    .line 12
    :cond_b
    return v0
.end method

.method public getShadowColor()I
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->isInFolmeMode()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_f

    .line 7
    iget-object v0, p0, Lcom/miui/maml/elements/TextScreenElement;->mTextShadowColorProperty:Lcom/miui/maml/folme/PropertyWrapper;

    .line 9
    invoke-virtual {v0}, Lcom/miui/maml/folme/PropertyWrapper;->getValue()D

    .line 12
    move-result-wide v0

    .line 13
    double-to-long v0, v0

    .line 14
    long-to-int v0, v0

    .line 15
    return v0

    .line 16
    :cond_f
    iget-object v0, p0, Lcom/miui/maml/elements/TextScreenElement;->mShadowColorParser:Lcom/miui/maml/util/ColorParser;

    .line 18
    invoke-virtual {v0}, Lcom/miui/maml/util/ColorParser;->getColor()I

    .line 21
    move-result v0

    .line 22
    return v0
.end method

.method public getText()Ljava/lang/String;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/TextScreenElement;->mSetText:Ljava/lang/String;

    .line 3
    if-eqz v0, :cond_5

    .line 5
    return-object v0

    .line 6
    :cond_5
    iget-object v0, p0, Lcom/miui/maml/elements/TextScreenElement;->mFormatter:Lcom/miui/maml/util/TextFormatter;

    .line 8
    invoke-virtual {v0}, Lcom/miui/maml/util/TextFormatter;->getText()Ljava/lang/String;

    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_1f

    .line 14
    const-string v1, "\\n"

    .line 16
    const-string v2, "\n"

    .line 18
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 21
    move-result-object v0

    .line 22
    iget-boolean v1, p0, Lcom/miui/maml/elements/TextScreenElement;->mMultiLine:Z

    .line 24
    if-nez v1, :cond_1f

    .line 26
    const-string v1, " "

    .line 28
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 31
    move-result-object v0

    .line 32
    :cond_1f
    return-object v0
.end method

.method public getWidth()F
    .registers 3

    .line 1
    invoke-super {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getWidth()F

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    cmpg-float v1, v0, v1

    .line 8
    if-gtz v1, :cond_b

    .line 10
    iget v0, p0, Lcom/miui/maml/elements/TextScreenElement;->mTextWidth:F

    .line 12
    :cond_b
    return v0
.end method

.method public init()V
    .registers 1

    .line 1
    invoke-super {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->init()V

    .line 4
    return-void
.end method

.method public initProperties()V
    .registers 2

    .line 1
    invoke-super {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->initProperties()V

    .line 4
    iget-object v0, p0, Lcom/miui/maml/elements/TextScreenElement;->mTextSizeProperty:Lcom/miui/maml/folme/PropertyWrapper;

    .line 6
    invoke-virtual {v0}, Lcom/miui/maml/folme/PropertyWrapper;->init()V

    .line 9
    iget-object v0, p0, Lcom/miui/maml/elements/TextScreenElement;->mTextColorProperty:Lcom/miui/maml/folme/PropertyWrapper;

    .line 11
    invoke-virtual {v0}, Lcom/miui/maml/folme/PropertyWrapper;->init()V

    .line 14
    iget-object v0, p0, Lcom/miui/maml/elements/TextScreenElement;->mTextShadowColorProperty:Lcom/miui/maml/folme/PropertyWrapper;

    .line 16
    invoke-virtual {v0}, Lcom/miui/maml/folme/PropertyWrapper;->init()V

    .line 19
    return-void
.end method

.method public onVisibilityChange(Z)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Lcom/miui/maml/elements/AnimatedScreenElement;->onVisibilityChange(Z)V

    .line 4
    iget-boolean v0, p0, Lcom/miui/maml/elements/TextScreenElement;->mShouldMarquee:Z

    .line 6
    if-eqz v0, :cond_c

    .line 8
    if-eqz p1, :cond_c

    .line 10
    const/high16 p1, 0x42340000  # 45.0f

    .line 12
    goto :goto_d

    .line 13
    :cond_c
    const/4 p1, 0x0

    .line 14
    :goto_d
    invoke-virtual {p0, p1}, Lcom/miui/maml/elements/ScreenElement;->requestFramerate(F)V

    .line 17
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Lcom/miui/maml/elements/AnimatedScreenElement;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 4
    iget-object v0, p0, Lcom/miui/maml/elements/TextScreenElement;->mPaint:Landroid/text/TextPaint;

    .line 6
    if-eqz v0, :cond_a

    .line 8
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 11
    :cond_a
    return-void
.end method

.method public varargs setParams([Ljava/lang/Object;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/TextScreenElement;->mFormatter:Lcom/miui/maml/util/TextFormatter;

    .line 3
    invoke-virtual {v0, p1}, Lcom/miui/maml/util/TextFormatter;->setParams([Ljava/lang/Object;)V

    .line 6
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/miui/maml/elements/TextScreenElement;->mSetText:Ljava/lang/String;

    .line 3
    return-void
.end method
