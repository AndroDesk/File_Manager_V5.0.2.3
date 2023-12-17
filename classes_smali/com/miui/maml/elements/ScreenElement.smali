.class public abstract Lcom/miui/maml/elements/ScreenElement;
.super Ljava/lang/Object;
.source "ScreenElement.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/maml/elements/ScreenElement$Align;,
        Lcom/miui/maml/elements/ScreenElement$AlignV;
    }
.end annotation


# static fields
.field public static final ACTUAL_H:Ljava/lang/String; = "actual_h"

.field public static final ACTUAL_W:Ljava/lang/String; = "actual_w"

.field public static final ACTUAL_X:Ljava/lang/String; = "actual_x"

.field public static final ACTUAL_Y:Ljava/lang/String; = "actual_y"

.field private static final LOG_TAG:Ljava/lang/String; = "MAML ScreenElement"

.field public static final VISIBILITY:Ljava/lang/String; = "visibility"

.field public static final VISIBILITY_FALSE:I = 0x0

.field public static final VISIBILITY_TRUE:I = 0x1


# instance fields
.field private mActualHeightVar:Lcom/miui/maml/data/IndexedVariable;

.field private mActualWidthVar:Lcom/miui/maml/data/IndexedVariable;

.field public mAlign:Lcom/miui/maml/elements/ScreenElement$Align;

.field public mAlignV:Lcom/miui/maml/elements/ScreenElement$AlignV;

.field public mAnimations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/maml/animation/BaseAnimation;",
            ">;"
        }
    .end annotation
.end field

.field public mAvailableController:Lcom/miui/maml/RendererController;

.field public mCategory:Ljava/lang/String;

.field private mCurFramerate:F

.field private mFramerateToken:Lcom/miui/maml/FramerateTokenList$FramerateToken;

.field public mHasName:Z

.field private mInitShow:Z

.field private mIsVisible:Z

.field public mName:Ljava/lang/String;

.field public mParent:Lcom/miui/maml/elements/ElementGroup;

.field public mResumed:Z

.field public mRoot:Lcom/miui/maml/ScreenElementRoot;

.field private mShow:Z

.field public mStyle:Lcom/miui/maml/StylesManager$Style;

.field public mTriggers:Lcom/miui/maml/CommandTriggers;

.field private mVisibilityExpression:Lcom/miui/maml/data/Expression;

.field private mVisibilityVar:Lcom/miui/maml/data/IndexedVariable;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/miui/maml/elements/ScreenElement;->mInitShow:Z

    .line 7
    iput-boolean v0, p0, Lcom/miui/maml/elements/ScreenElement;->mShow:Z

    .line 9
    iput-boolean v0, p0, Lcom/miui/maml/elements/ScreenElement;->mIsVisible:Z

    .line 11
    iput-object p2, p0, Lcom/miui/maml/elements/ScreenElement;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 13
    if-eqz p1, :cond_1c

    .line 15
    if-eqz p2, :cond_1c

    .line 17
    const-string v0, "style"

    .line 19
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {p2, v0}, Lcom/miui/maml/ScreenElementRoot;->getStyle(Ljava/lang/String;)Lcom/miui/maml/StylesManager$Style;

    .line 26
    move-result-object p2

    .line 27
    iput-object p2, p0, Lcom/miui/maml/elements/ScreenElement;->mStyle:Lcom/miui/maml/StylesManager$Style;

    .line 29
    :cond_1c
    invoke-direct {p0, p1}, Lcom/miui/maml/elements/ScreenElement;->load(Lorg/w3c/dom/Element;)V

    .line 32
    return-void
.end method

.method public static isTagEnable([Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    .line 1
    const/4 v0, 0x1

    .line 2
    if-nez p0, :cond_a

    .line 4
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 7
    move-result p0

    .line 8
    if-eqz p0, :cond_11

    .line 10
    return v0

    .line 11
    :cond_a
    invoke-static {p0, p1}, Lcom/miui/maml/util/Utils;->arrayContains([Ljava/lang/String;Ljava/lang/String;)Z

    .line 14
    move-result p0

    .line 15
    if-eqz p0, :cond_11

    .line 17
    return v0

    .line 18
    :cond_11
    const/4 p0, 0x0

    .line 19
    return p0
.end method

.method private load(Lorg/w3c/dom/Element;)V
    .registers 6

    .line 1
    if-nez p1, :cond_3

    .line 3
    return-void

    .line 4
    :cond_3
    const-string v0, "category"

    .line 6
    invoke-virtual {p0, p1, v0}, Lcom/miui/maml/elements/ScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    .line 9
    move-result-object v0

    .line 10
    iput-object v0, p0, Lcom/miui/maml/elements/ScreenElement;->mCategory:Ljava/lang/String;

    .line 12
    const-string v0, "name"

    .line 14
    invoke-virtual {p0, p1, v0}, Lcom/miui/maml/elements/ScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    .line 17
    move-result-object v0

    .line 18
    iput-object v0, p0, Lcom/miui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    .line 20
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 23
    move-result v0

    .line 24
    const/4 v1, 0x1

    .line 25
    xor-int/2addr v0, v1

    .line 26
    iput-boolean v0, p0, Lcom/miui/maml/elements/ScreenElement;->mHasName:Z

    .line 28
    if-eqz v0, :cond_50

    .line 30
    const-string v0, "namesSuffix"

    .line 32
    invoke-virtual {p0, p1, v0}, Lcom/miui/maml/elements/ScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    .line 35
    move-result-object v0

    .line 36
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 39
    move-result v2

    .line 40
    if-nez v2, :cond_36

    .line 42
    new-instance v2, Ljava/lang/StringBuilder;

    .line 44
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 47
    iget-object v3, p0, Lcom/miui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    .line 49
    invoke-static {v2, v3, v0}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 52
    move-result-object v0

    .line 53
    iput-object v0, p0, Lcom/miui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    .line 55
    :cond_36
    const-string v0, "dontAddToMap"

    .line 57
    invoke-virtual {p0, p1, v0}, Lcom/miui/maml/elements/ScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    .line 60
    move-result-object v0

    .line 61
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 64
    move-result v0

    .line 65
    if-nez v0, :cond_50

    .line 67
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getRoot()Lcom/miui/maml/ScreenElementRoot;

    .line 70
    move-result-object v0

    .line 71
    iget-object v2, p0, Lcom/miui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    .line 73
    new-instance v3, Ljava/lang/ref/WeakReference;

    .line 75
    invoke-direct {v3, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 78
    invoke-virtual {v0, v2, v3}, Lcom/miui/maml/ScreenElementRoot;->addElement(Ljava/lang/String;Ljava/lang/ref/WeakReference;)V

    .line 81
    :cond_50
    const-string v0, "visibility"

    .line 83
    invoke-virtual {p0, p1, v0}, Lcom/miui/maml/elements/ScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    .line 86
    move-result-object v0

    .line 87
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 90
    move-result v2

    .line 91
    if-nez v2, :cond_7d

    .line 93
    const-string v2, "false"

    .line 95
    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 98
    move-result v2

    .line 99
    if-eqz v2, :cond_68

    .line 101
    const/4 v0, 0x0

    .line 102
    iput-boolean v0, p0, Lcom/miui/maml/elements/ScreenElement;->mInitShow:Z

    .line 104
    goto :goto_7d

    .line 105
    :cond_68
    const-string v2, "true"

    .line 107
    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 110
    move-result v2

    .line 111
    if-eqz v2, :cond_73

    .line 113
    iput-boolean v1, p0, Lcom/miui/maml/elements/ScreenElement;->mInitShow:Z

    .line 115
    goto :goto_7d

    .line 116
    :cond_73
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    .line 119
    move-result-object v1

    .line 120
    invoke-static {v1, v0}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    .line 123
    move-result-object v0

    .line 124
    iput-object v0, p0, Lcom/miui/maml/elements/ScreenElement;->mVisibilityExpression:Lcom/miui/maml/data/Expression;

    .line 126
    :cond_7d
    :goto_7d
    sget-object v0, Lcom/miui/maml/elements/ScreenElement$Align;->LEFT:Lcom/miui/maml/elements/ScreenElement$Align;

    .line 128
    iput-object v0, p0, Lcom/miui/maml/elements/ScreenElement;->mAlign:Lcom/miui/maml/elements/ScreenElement$Align;

    .line 130
    const-string v1, "align"

    .line 132
    invoke-virtual {p0, p1, v1}, Lcom/miui/maml/elements/ScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    .line 135
    move-result-object v1

    .line 136
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 139
    move-result v2

    .line 140
    if-eqz v2, :cond_93

    .line 142
    const-string v1, "alignH"

    .line 144
    invoke-virtual {p0, p1, v1}, Lcom/miui/maml/elements/ScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    .line 147
    move-result-object v1

    .line 148
    :cond_93
    const-string v2, "right"

    .line 150
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 153
    move-result v2

    .line 154
    const-string v3, "center"

    .line 156
    if-eqz v2, :cond_a2

    .line 158
    sget-object v0, Lcom/miui/maml/elements/ScreenElement$Align;->RIGHT:Lcom/miui/maml/elements/ScreenElement$Align;

    .line 160
    iput-object v0, p0, Lcom/miui/maml/elements/ScreenElement;->mAlign:Lcom/miui/maml/elements/ScreenElement$Align;

    .line 162
    goto :goto_b7

    .line 163
    :cond_a2
    const-string v2, "left"

    .line 165
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 168
    move-result v2

    .line 169
    if-eqz v2, :cond_ad

    .line 171
    iput-object v0, p0, Lcom/miui/maml/elements/ScreenElement;->mAlign:Lcom/miui/maml/elements/ScreenElement$Align;

    .line 173
    goto :goto_b7

    .line 174
    :cond_ad
    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 177
    move-result v0

    .line 178
    if-eqz v0, :cond_b7

    .line 180
    sget-object v0, Lcom/miui/maml/elements/ScreenElement$Align;->CENTER:Lcom/miui/maml/elements/ScreenElement$Align;

    .line 182
    iput-object v0, p0, Lcom/miui/maml/elements/ScreenElement;->mAlign:Lcom/miui/maml/elements/ScreenElement$Align;

    .line 184
    :cond_b7
    :goto_b7
    sget-object v0, Lcom/miui/maml/elements/ScreenElement$AlignV;->TOP:Lcom/miui/maml/elements/ScreenElement$AlignV;

    .line 186
    iput-object v0, p0, Lcom/miui/maml/elements/ScreenElement;->mAlignV:Lcom/miui/maml/elements/ScreenElement$AlignV;

    .line 188
    const-string v1, "alignV"

    .line 190
    invoke-virtual {p0, p1, v1}, Lcom/miui/maml/elements/ScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    .line 193
    move-result-object v1

    .line 194
    const-string v2, "bottom"

    .line 196
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 199
    move-result v2

    .line 200
    if-eqz v2, :cond_ce

    .line 202
    sget-object v0, Lcom/miui/maml/elements/ScreenElement$AlignV;->BOTTOM:Lcom/miui/maml/elements/ScreenElement$AlignV;

    .line 204
    iput-object v0, p0, Lcom/miui/maml/elements/ScreenElement;->mAlignV:Lcom/miui/maml/elements/ScreenElement$AlignV;

    .line 206
    goto :goto_e3

    .line 207
    :cond_ce
    const-string v2, "top"

    .line 209
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 212
    move-result v2

    .line 213
    if-eqz v2, :cond_d9

    .line 215
    iput-object v0, p0, Lcom/miui/maml/elements/ScreenElement;->mAlignV:Lcom/miui/maml/elements/ScreenElement$AlignV;

    .line 217
    goto :goto_e3

    .line 218
    :cond_d9
    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 221
    move-result v0

    .line 222
    if-eqz v0, :cond_e3

    .line 224
    sget-object v0, Lcom/miui/maml/elements/ScreenElement$AlignV;->CENTER:Lcom/miui/maml/elements/ScreenElement$AlignV;

    .line 226
    iput-object v0, p0, Lcom/miui/maml/elements/ScreenElement;->mAlignV:Lcom/miui/maml/elements/ScreenElement$AlignV;

    .line 228
    :cond_e3
    :goto_e3
    invoke-virtual {p0, p1}, Lcom/miui/maml/elements/ScreenElement;->loadTriggers(Lorg/w3c/dom/Element;)V

    .line 231
    invoke-direct {p0, p1}, Lcom/miui/maml/elements/ScreenElement;->loadAnimations(Lorg/w3c/dom/Element;)V

    .line 234
    return-void
.end method

.method private loadAnimations(Lorg/w3c/dom/Element;)V
    .registers 4

    .line 1
    new-instance v0, Lcom/miui/maml/elements/ScreenElement$1;

    .line 3
    invoke-direct {v0, p0}, Lcom/miui/maml/elements/ScreenElement$1;-><init>(Lcom/miui/maml/elements/ScreenElement;)V

    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-static {p1, v1, v0}, Lcom/miui/maml/util/Utils;->traverseXmlElementChildren(Lorg/w3c/dom/Element;Ljava/lang/String;Lcom/miui/maml/util/Utils$XmlTraverseListener;)V

    .line 10
    return-void
.end method

.method private setVisibilityVar(Z)V
    .registers 7

    .line 1
    iget-boolean v0, p0, Lcom/miui/maml/elements/ScreenElement;->mHasName:Z

    .line 3
    if-eqz v0, :cond_31

    .line 5
    iget-object v0, p0, Lcom/miui/maml/elements/ScreenElement;->mVisibilityVar:Lcom/miui/maml/data/IndexedVariable;

    .line 7
    if-nez v0, :cond_25

    .line 9
    new-instance v0, Lcom/miui/maml/data/IndexedVariable;

    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    .line 13
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    iget-object v2, p0, Lcom/miui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    .line 18
    const-string v3, "."

    .line 20
    const-string v4, "visibility"

    .line 22
    invoke-static {v1, v2, v3, v4}, La/a;->n(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getContext()Lcom/miui/maml/ScreenContext;

    .line 29
    move-result-object v2

    .line 30
    iget-object v2, v2, Lcom/miui/maml/ScreenContext;->mVariables:Lcom/miui/maml/data/Variables;

    .line 32
    const/4 v3, 0x1

    .line 33
    invoke-direct {v0, v1, v2, v3}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    .line 36
    iput-object v0, p0, Lcom/miui/maml/elements/ScreenElement;->mVisibilityVar:Lcom/miui/maml/data/IndexedVariable;

    .line 38
    :cond_25
    iget-object v0, p0, Lcom/miui/maml/elements/ScreenElement;->mVisibilityVar:Lcom/miui/maml/data/IndexedVariable;

    .line 40
    if-eqz p1, :cond_2c

    .line 42
    const-wide/high16 v1, 0x3ff0000000000000L  # 1.0

    .line 44
    goto :goto_2e

    .line 45
    :cond_2c
    const-wide/16 v1, 0x0

    .line 47
    :goto_2e
    invoke-virtual {v0, v1, v2}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 50
    :cond_31
    return-void
.end method


# virtual methods
.method public acceptVisitor(Lcom/miui/maml/elements/ScreenElementVisitor;)V
    .registers 2

    .line 1
    invoke-interface {p1, p0}, Lcom/miui/maml/elements/ScreenElementVisitor;->visit(Lcom/miui/maml/elements/ScreenElement;)V

    .line 4
    return-void
.end method

.method public createToken(Ljava/lang/String;)Lcom/miui/maml/FramerateTokenList$FramerateToken;
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getRendererController()Lcom/miui/maml/RendererController;

    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_8

    .line 7
    const/4 p1, 0x0

    .line 8
    return-object p1

    .line 9
    :cond_8
    invoke-virtual {v0, p1}, Lcom/miui/maml/RendererController;->createToken(Ljava/lang/String;)Lcom/miui/maml/FramerateTokenList$FramerateToken;

    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method public final descale(D)D
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/ScreenElement;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 3
    invoke-virtual {v0}, Lcom/miui/maml/ScreenElementRoot;->getScale()F

    .line 6
    move-result v0

    .line 7
    float-to-double v0, v0

    .line 8
    div-double/2addr p1, v0

    .line 9
    return-wide p1
.end method

.method public abstract doRender(Landroid/graphics/Canvas;)V
.end method

.method public doTick(J)V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/ScreenElement;->mAnimations:Ljava/util/ArrayList;

    .line 3
    if-eqz v0, :cond_19

    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    :goto_9
    if-ge v1, v0, :cond_19

    .line 12
    iget-object v2, p0, Lcom/miui/maml/elements/ScreenElement;->mAnimations:Ljava/util/ArrayList;

    .line 14
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 17
    move-result-object v2

    .line 18
    check-cast v2, Lcom/miui/maml/animation/BaseAnimation;

    .line 20
    invoke-virtual {v2, p1, p2}, Lcom/miui/maml/animation/BaseAnimation;->tick(J)V

    .line 23
    add-int/lit8 v1, v1, 0x1

    .line 25
    goto :goto_9

    .line 26
    :cond_19
    return-void
.end method

.method public final evaluate(Lcom/miui/maml/data/Expression;)D
    .registers 4

    .line 1
    if-nez p1, :cond_5

    .line 3
    const-wide/16 v0, 0x0

    .line 5
    goto :goto_9

    .line 6
    :cond_5
    invoke-virtual {p1}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 9
    move-result-wide v0

    .line 10
    :goto_9
    return-wide v0
.end method

.method public final evaluateStr(Lcom/miui/maml/data/Expression;)Ljava/lang/String;
    .registers 2

    .line 1
    if-nez p1, :cond_4

    .line 3
    const/4 p1, 0x0

    .line 4
    goto :goto_8

    .line 5
    :cond_4
    invoke-virtual {p1}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    .line 8
    move-result-object p1

    .line 9
    :goto_8
    return-object p1
.end method

.method public findElement(Ljava/lang/String;)Lcom/miui/maml/elements/ScreenElement;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    .line 3
    if-eqz v0, :cond_c

    .line 5
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    move-result p1

    .line 9
    if-eqz p1, :cond_c

    .line 11
    move-object p1, p0

    .line 12
    goto :goto_d

    .line 13
    :cond_c
    const/4 p1, 0x0

    .line 14
    :goto_d
    return-object p1
.end method

.method public finish()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/ScreenElement;->mTriggers:Lcom/miui/maml/CommandTriggers;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-virtual {v0}, Lcom/miui/maml/CommandTriggers;->finish()V

    .line 8
    :cond_7
    iget-object v0, p0, Lcom/miui/maml/elements/ScreenElement;->mAnimations:Ljava/util/ArrayList;

    .line 10
    if-eqz v0, :cond_20

    .line 12
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 15
    move-result v0

    .line 16
    const/4 v1, 0x0

    .line 17
    :goto_10
    if-ge v1, v0, :cond_20

    .line 19
    iget-object v2, p0, Lcom/miui/maml/elements/ScreenElement;->mAnimations:Ljava/util/ArrayList;

    .line 21
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 24
    move-result-object v2

    .line 25
    check-cast v2, Lcom/miui/maml/animation/BaseAnimation;

    .line 27
    invoke-virtual {v2}, Lcom/miui/maml/animation/BaseAnimation;->finish()V

    .line 30
    add-int/lit8 v1, v1, 0x1

    .line 32
    goto :goto_10

    .line 33
    :cond_20
    return-void
.end method

.method public getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/ScreenElement;->mStyle:Lcom/miui/maml/StylesManager$Style;

    .line 3
    invoke-static {p1, p2, v0}, Lcom/miui/maml/util/StyleHelper;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;Lcom/miui/maml/StylesManager$Style;)Ljava/lang/String;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public getAttrAsFloat(Lorg/w3c/dom/Element;Ljava/lang/String;F)F
    .registers 4

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/miui/maml/elements/ScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    .line 4
    move-result-object p1

    .line 5
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    move-result p2

    .line 9
    if-nez p2, :cond_f

    .line 11
    :try_start_a
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 14
    move-result p1
    :try_end_e
    .catch Ljava/lang/NumberFormatException; {:try_start_a .. :try_end_e} :catch_f

    .line 15
    return p1

    .line 16
    :catch_f
    :cond_f
    return p3
.end method

.method public getAttrAsInt(Lorg/w3c/dom/Element;Ljava/lang/String;I)I
    .registers 4

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/miui/maml/elements/ScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    .line 4
    move-result-object p1

    .line 5
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    move-result p2

    .line 9
    if-nez p2, :cond_f

    .line 11
    :try_start_a
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 14
    move-result p1
    :try_end_e
    .catch Ljava/lang/NumberFormatException; {:try_start_a .. :try_end_e} :catch_f

    .line 15
    return p1

    .line 16
    :catch_f
    :cond_f
    return p3
.end method

.method public getAttrAsLong(Lorg/w3c/dom/Element;Ljava/lang/String;J)J
    .registers 5

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/miui/maml/elements/ScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    .line 4
    move-result-object p1

    .line 5
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    move-result p2

    .line 9
    if-nez p2, :cond_f

    .line 11
    :try_start_a
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 14
    move-result-wide p1
    :try_end_e
    .catch Ljava/lang/NumberFormatException; {:try_start_a .. :try_end_e} :catch_f

    .line 15
    return-wide p1

    .line 16
    :catch_f
    :cond_f
    return-wide p3
.end method

.method public getContext()Lcom/miui/maml/ScreenContext;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/ScreenElement;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 3
    invoke-virtual {v0}, Lcom/miui/maml/ScreenElementRoot;->getContext()Lcom/miui/maml/ScreenContext;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final getFramerate()F
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/ScreenElement;->mFramerateToken:Lcom/miui/maml/FramerateTokenList$FramerateToken;

    .line 3
    if-nez v0, :cond_6

    .line 5
    const/4 v0, 0x0

    .line 6
    goto :goto_a

    .line 7
    :cond_6
    invoke-virtual {v0}, Lcom/miui/maml/FramerateTokenList$FramerateToken;->getFramerate()F

    .line 10
    move-result v0

    .line 11
    :goto_a
    return v0
.end method

.method public getLeft(FF)F
    .registers 5

    .line 1
    const/4 v0, 0x0

    .line 2
    cmpg-float v0, p2, v0

    .line 4
    if-gtz v0, :cond_6

    .line 6
    return p1

    .line 7
    :cond_6
    sget-object v0, Lcom/miui/maml/elements/ScreenElement$2;->$SwitchMap$com$miui$maml$elements$ScreenElement$Align:[I

    .line 9
    iget-object v1, p0, Lcom/miui/maml/elements/ScreenElement;->mAlign:Lcom/miui/maml/elements/ScreenElement$Align;

    .line 11
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 14
    move-result v1

    .line 15
    aget v0, v0, v1

    .line 17
    const/4 v1, 0x1

    .line 18
    if-eq v0, v1, :cond_17

    .line 20
    const/4 v1, 0x2

    .line 21
    if-eq v0, v1, :cond_1a

    .line 23
    goto :goto_1b

    .line 24
    :cond_17
    const/high16 v0, 0x40000000  # 2.0f

    .line 26
    div-float/2addr p2, v0

    .line 27
    :cond_1a
    sub-float/2addr p1, p2

    .line 28
    :goto_1b
    return p1
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public final getNotifierManager()Lcom/miui/maml/NotifierManager;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getContext()Lcom/miui/maml/ScreenContext;

    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lcom/miui/maml/ScreenContext;->mContext:Landroid/content/Context;

    .line 7
    invoke-static {v0}, Lcom/miui/maml/NotifierManager;->getInstance(Landroid/content/Context;)Lcom/miui/maml/NotifierManager;

    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public getParent()Lcom/miui/maml/elements/ElementGroup;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/ScreenElement;->mParent:Lcom/miui/maml/elements/ElementGroup;

    .line 3
    return-object v0
.end method

.method public getRendererController()Lcom/miui/maml/RendererController;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/ScreenElement;->mParent:Lcom/miui/maml/elements/ElementGroup;

    .line 3
    if-eqz v0, :cond_9

    .line 5
    invoke-virtual {v0}, Lcom/miui/maml/elements/ScreenElement;->getRendererController()Lcom/miui/maml/RendererController;

    .line 8
    move-result-object v0

    .line 9
    goto :goto_a

    .line 10
    :cond_9
    const/4 v0, 0x0

    .line 11
    :goto_a
    return-object v0
.end method

.method public getRoot()Lcom/miui/maml/ScreenElementRoot;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/ScreenElement;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 3
    return-object v0
.end method

.method public getTop(FF)F
    .registers 5

    .line 1
    const/4 v0, 0x0

    .line 2
    cmpg-float v0, p2, v0

    .line 4
    if-gtz v0, :cond_6

    .line 6
    return p1

    .line 7
    :cond_6
    sget-object v0, Lcom/miui/maml/elements/ScreenElement$2;->$SwitchMap$com$miui$maml$elements$ScreenElement$AlignV:[I

    .line 9
    iget-object v1, p0, Lcom/miui/maml/elements/ScreenElement;->mAlignV:Lcom/miui/maml/elements/ScreenElement$AlignV;

    .line 11
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 14
    move-result v1

    .line 15
    aget v0, v0, v1

    .line 17
    const/4 v1, 0x1

    .line 18
    if-eq v0, v1, :cond_17

    .line 20
    const/4 v1, 0x2

    .line 21
    if-eq v0, v1, :cond_1a

    .line 23
    goto :goto_1b

    .line 24
    :cond_17
    const/high16 v0, 0x40000000  # 2.0f

    .line 26
    div-float/2addr p2, v0

    .line 27
    :cond_1a
    sub-float/2addr p1, p2

    .line 28
    :goto_1b
    return p1
.end method

.method public final getVariables()Lcom/miui/maml/data/Variables;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getContext()Lcom/miui/maml/ScreenContext;

    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lcom/miui/maml/ScreenContext;->mVariables:Lcom/miui/maml/data/Variables;

    .line 7
    return-object v0
.end method

.method public init()V
    .registers 4

    .line 1
    iget-boolean v0, p0, Lcom/miui/maml/elements/ScreenElement;->mInitShow:Z

    .line 3
    iput-boolean v0, p0, Lcom/miui/maml/elements/ScreenElement;->mShow:Z

    .line 5
    iget-object v0, p0, Lcom/miui/maml/elements/ScreenElement;->mFramerateToken:Lcom/miui/maml/FramerateTokenList$FramerateToken;

    .line 7
    if-eqz v0, :cond_b

    .line 9
    invoke-virtual {p0, v0}, Lcom/miui/maml/elements/ScreenElement;->removeToken(Lcom/miui/maml/FramerateTokenList$FramerateToken;)V

    .line 12
    :cond_b
    const/4 v0, 0x0

    .line 13
    iput-object v0, p0, Lcom/miui/maml/elements/ScreenElement;->mFramerateToken:Lcom/miui/maml/FramerateTokenList$FramerateToken;

    .line 15
    iget-object v1, p0, Lcom/miui/maml/elements/ScreenElement;->mTriggers:Lcom/miui/maml/CommandTriggers;

    .line 17
    if-eqz v1, :cond_15

    .line 19
    invoke-virtual {v1}, Lcom/miui/maml/CommandTriggers;->init()V

    .line 22
    :cond_15
    invoke-virtual {p0, v0}, Lcom/miui/maml/elements/ScreenElement;->setAnim([Ljava/lang/String;)V

    .line 25
    iget-object v0, p0, Lcom/miui/maml/elements/ScreenElement;->mAnimations:Ljava/util/ArrayList;

    .line 27
    if-eqz v0, :cond_31

    .line 29
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 32
    move-result v0

    .line 33
    const/4 v1, 0x0

    .line 34
    :goto_21
    if-ge v1, v0, :cond_31

    .line 36
    iget-object v2, p0, Lcom/miui/maml/elements/ScreenElement;->mAnimations:Ljava/util/ArrayList;

    .line 38
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 41
    move-result-object v2

    .line 42
    check-cast v2, Lcom/miui/maml/animation/BaseAnimation;

    .line 44
    invoke-virtual {v2}, Lcom/miui/maml/animation/BaseAnimation;->init()V

    .line 47
    add-int/lit8 v1, v1, 0x1

    .line 49
    goto :goto_21

    .line 50
    :cond_31
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->updateVisibility()V

    .line 53
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->isVisible()Z

    .line 56
    move-result v0

    .line 57
    invoke-direct {p0, v0}, Lcom/miui/maml/elements/ScreenElement;->setVisibilityVar(Z)V

    .line 60
    const-string v0, "init"

    .line 62
    invoke-virtual {p0, v0}, Lcom/miui/maml/elements/ScreenElement;->performAction(Ljava/lang/String;)V

    .line 65
    return-void
.end method

.method public isVisible()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/miui/maml/elements/ScreenElement;->mIsVisible:Z

    .line 3
    return v0
.end method

.method public isVisibleInner()Z
    .registers 5

    .line 1
    iget-boolean v0, p0, Lcom/miui/maml/elements/ScreenElement;->mShow:Z

    .line 3
    if-eqz v0, :cond_20

    .line 5
    iget-object v0, p0, Lcom/miui/maml/elements/ScreenElement;->mVisibilityExpression:Lcom/miui/maml/data/Expression;

    .line 7
    if-nez v0, :cond_9

    .line 9
    goto :goto_13

    .line 10
    :cond_9
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 13
    move-result-wide v0

    .line 14
    const-wide/16 v2, 0x0

    .line 16
    cmpl-double v0, v0, v2

    .line 18
    if-lez v0, :cond_20

    .line 20
    :goto_13
    iget-object v0, p0, Lcom/miui/maml/elements/ScreenElement;->mParent:Lcom/miui/maml/elements/ElementGroup;

    .line 22
    if-nez v0, :cond_18

    .line 24
    goto :goto_1e

    .line 25
    :cond_18
    invoke-virtual {v0}, Lcom/miui/maml/elements/ScreenElement;->isVisible()Z

    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_20

    .line 31
    :goto_1e
    const/4 v0, 0x1

    .line 32
    goto :goto_21

    .line 33
    :cond_20
    const/4 v0, 0x0

    .line 34
    :goto_21
    return v0
.end method

.method public loadTriggers(Lorg/w3c/dom/Element;)V
    .registers 3

    .line 1
    const-string v0, "Triggers"

    .line 3
    invoke-static {p1, v0}, Lcom/miui/maml/util/Utils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_f

    .line 9
    new-instance v0, Lcom/miui/maml/CommandTriggers;

    .line 11
    invoke-direct {v0, p1, p0}, Lcom/miui/maml/CommandTriggers;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/elements/ScreenElement;)V

    .line 14
    iput-object v0, p0, Lcom/miui/maml/elements/ScreenElement;->mTriggers:Lcom/miui/maml/CommandTriggers;

    .line 16
    :cond_f
    return-void
.end method

.method public onCreateAnimation(Ljava/lang/String;Lorg/w3c/dom/Element;)Lcom/miui/maml/animation/BaseAnimation;
    .registers 3

    const/4 p1, 0x0

    return-object p1
.end method

.method public onHover(Landroid/view/MotionEvent;)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public onSetAnimBefore()V
    .registers 1

    return-void
.end method

.method public onSetAnimEnable(Lcom/miui/maml/animation/BaseAnimation;)V
    .registers 2

    return-void
.end method

.method public onTouch(Landroid/view/MotionEvent;)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public onVisibilityChange(Z)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/miui/maml/elements/ScreenElement;->setVisibilityVar(Z)V

    .line 4
    if-nez p1, :cond_10

    .line 6
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getFramerate()F

    .line 9
    move-result p1

    .line 10
    iput p1, p0, Lcom/miui/maml/elements/ScreenElement;->mCurFramerate:F

    .line 12
    const/4 p1, 0x0

    .line 13
    invoke-virtual {p0, p1}, Lcom/miui/maml/elements/ScreenElement;->requestFramerate(F)V

    .line 16
    goto :goto_15

    .line 17
    :cond_10
    iget p1, p0, Lcom/miui/maml/elements/ScreenElement;->mCurFramerate:F

    .line 19
    invoke-virtual {p0, p1}, Lcom/miui/maml/elements/ScreenElement;->requestFramerate(F)V

    .line 22
    :goto_15
    return-void
.end method

.method public pause()V
    .registers 4

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/miui/maml/elements/ScreenElement;->mResumed:Z

    .line 4
    iget-object v1, p0, Lcom/miui/maml/elements/ScreenElement;->mTriggers:Lcom/miui/maml/CommandTriggers;

    .line 6
    if-eqz v1, :cond_a

    .line 8
    invoke-virtual {v1}, Lcom/miui/maml/CommandTriggers;->pause()V

    .line 11
    :cond_a
    iget-object v1, p0, Lcom/miui/maml/elements/ScreenElement;->mAnimations:Ljava/util/ArrayList;

    .line 13
    if-eqz v1, :cond_22

    .line 15
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 18
    move-result v1

    .line 19
    :goto_12
    if-ge v0, v1, :cond_22

    .line 21
    iget-object v2, p0, Lcom/miui/maml/elements/ScreenElement;->mAnimations:Ljava/util/ArrayList;

    .line 23
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 26
    move-result-object v2

    .line 27
    check-cast v2, Lcom/miui/maml/animation/BaseAnimation;

    .line 29
    invoke-virtual {v2}, Lcom/miui/maml/animation/BaseAnimation;->pause()V

    .line 32
    add-int/lit8 v0, v0, 0x1

    .line 34
    goto :goto_12

    .line 35
    :cond_22
    return-void
.end method

.method public final pauseAnim()V
    .registers 3

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 2
    invoke-virtual {p0, v0, v1}, Lcom/miui/maml/elements/ScreenElement;->pauseAnim(J)V

    .line 3
    invoke-virtual {p0, v0, v1}, Lcom/miui/maml/elements/ScreenElement;->doTick(J)V

    return-void
.end method

.method public pauseAnim(J)V
    .registers 6

    .line 4
    iget-object v0, p0, Lcom/miui/maml/elements/ScreenElement;->mAnimations:Ljava/util/ArrayList;

    if-eqz v0, :cond_19

    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_9
    if-ge v1, v0, :cond_19

    .line 6
    iget-object v2, p0, Lcom/miui/maml/elements/ScreenElement;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/maml/animation/BaseAnimation;

    invoke-virtual {v2, p1, p2}, Lcom/miui/maml/animation/BaseAnimation;->pauseAnim(J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_19
    return-void
.end method

.method public performAction(Ljava/lang/String;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/ScreenElement;->mTriggers:Lcom/miui/maml/CommandTriggers;

    .line 3
    if-eqz v0, :cond_c

    .line 5
    if-eqz p1, :cond_c

    .line 7
    invoke-virtual {v0, p1}, Lcom/miui/maml/CommandTriggers;->onAction(Ljava/lang/String;)V

    .line 10
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->requestUpdate()V

    .line 13
    :cond_c
    return-void
.end method

.method public final playAnim()V
    .registers 8

    const-wide/16 v1, 0x0

    const-wide/16 v3, -0x1

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object v0, p0

    .line 1
    invoke-virtual/range {v0 .. v6}, Lcom/miui/maml/elements/ScreenElement;->playAnim(JJZZ)V

    return-void
.end method

.method public playAnim(JJJZZ)V
    .registers 22

    move-object v0, p0

    .line 5
    iget-object v1, v0, Lcom/miui/maml/elements/ScreenElement;->mAnimations:Ljava/util/ArrayList;

    if-eqz v1, :cond_24

    .line 6
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v1, :cond_24

    .line 7
    iget-object v3, v0, Lcom/miui/maml/elements/ScreenElement;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/miui/maml/animation/BaseAnimation;

    move-wide v5, p1

    move-wide/from16 v7, p3

    move-wide/from16 v9, p5

    move/from16 v11, p7

    move/from16 v12, p8

    invoke-virtual/range {v4 .. v12}, Lcom/miui/maml/animation/BaseAnimation;->playAnim(JJJZZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_24
    return-void
.end method

.method public final playAnim(JJZZ)V
    .registers 18

    .line 2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    move-object v0, p0

    move-wide v1, v9

    move-wide v3, p1

    move-wide v5, p3

    move/from16 v7, p5

    move/from16 v8, p6

    .line 3
    invoke-virtual/range {v0 .. v8}, Lcom/miui/maml/elements/ScreenElement;->playAnim(JJJZZ)V

    .line 4
    invoke-virtual {p0, v9, v10}, Lcom/miui/maml/elements/ScreenElement;->doTick(J)V

    return-void
.end method

.method public final postInMainThread(Ljava/lang/Runnable;)V
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getContext()Lcom/miui/maml/ScreenContext;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/miui/maml/ScreenContext;->getHandler()Landroid/os/Handler;

    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 12
    return-void
.end method

.method public postRunnable(Ljava/lang/Runnable;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/ScreenElement;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 3
    invoke-virtual {v0}, Lcom/miui/maml/ScreenElementRoot;->getRendererController()Lcom/miui/maml/RendererController;

    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_b

    .line 9
    invoke-virtual {v0, p1}, Lcom/miui/maml/RendererController;->postRunnable(Ljava/lang/Runnable;)V

    .line 12
    :cond_b
    return-void
.end method

.method public postRunnableAtFrontOfQueue(Ljava/lang/Runnable;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/ScreenElement;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 3
    invoke-virtual {v0}, Lcom/miui/maml/ScreenElementRoot;->getRendererController()Lcom/miui/maml/RendererController;

    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_b

    .line 9
    invoke-virtual {v0, p1}, Lcom/miui/maml/RendererController;->postRunnableAtFrontOfQueue(Ljava/lang/Runnable;)V

    .line 12
    :cond_b
    return-void
.end method

.method public removeToken(Lcom/miui/maml/FramerateTokenList$FramerateToken;)V
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getRendererController()Lcom/miui/maml/RendererController;

    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_9

    .line 7
    invoke-virtual {v0, p1}, Lcom/miui/maml/RendererController;->removeToken(Lcom/miui/maml/FramerateTokenList$FramerateToken;)V

    .line 10
    :cond_9
    return-void
.end method

.method public render(Landroid/graphics/Canvas;)V
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->updateVisibility()V

    .line 4
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->isVisible()Z

    .line 7
    move-result v0

    .line 8
    if-nez v0, :cond_a

    .line 10
    return-void

    .line 11
    :cond_a
    invoke-virtual {p0, p1}, Lcom/miui/maml/elements/ScreenElement;->doRender(Landroid/graphics/Canvas;)V

    .line 14
    return-void
.end method

.method public final requestFramerate(F)V
    .registers 5

    .line 1
    const/4 v0, 0x0

    .line 2
    cmpg-float v1, p1, v0

    .line 4
    if-gez v1, :cond_6

    .line 6
    return-void

    .line 7
    :cond_6
    iget-object v1, p0, Lcom/miui/maml/elements/ScreenElement;->mFramerateToken:Lcom/miui/maml/FramerateTokenList$FramerateToken;

    .line 9
    if-nez v1, :cond_19

    .line 11
    cmpl-float v0, p1, v0

    .line 13
    if-nez v0, :cond_f

    .line 15
    return-void

    .line 16
    :cond_f
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {p0, v0}, Lcom/miui/maml/elements/ScreenElement;->createToken(Ljava/lang/String;)Lcom/miui/maml/FramerateTokenList$FramerateToken;

    .line 23
    move-result-object v0

    .line 24
    iput-object v0, p0, Lcom/miui/maml/elements/ScreenElement;->mFramerateToken:Lcom/miui/maml/FramerateTokenList$FramerateToken;

    .line 26
    :cond_19
    iget-object v0, p0, Lcom/miui/maml/elements/ScreenElement;->mFramerateToken:Lcom/miui/maml/FramerateTokenList$FramerateToken;

    .line 28
    if-eqz v0, :cond_2e

    .line 30
    iget-object v0, p0, Lcom/miui/maml/elements/ScreenElement;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 32
    invoke-virtual {v0}, Lcom/miui/maml/ScreenElementRoot;->getSystemFrameRate()F

    .line 35
    move-result v0

    .line 36
    iget-object v1, p0, Lcom/miui/maml/elements/ScreenElement;->mFramerateToken:Lcom/miui/maml/FramerateTokenList$FramerateToken;

    .line 38
    cmpg-float v2, p1, v0

    .line 40
    if-gtz v2, :cond_2a

    .line 42
    goto :goto_2b

    .line 43
    :cond_2a
    move p1, v0

    .line 44
    :goto_2b
    invoke-virtual {v1, p1}, Lcom/miui/maml/FramerateTokenList$FramerateToken;->requestFramerate(F)V

    .line 47
    :cond_2e
    return-void
.end method

.method public requestUpdate()V
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getRendererController()Lcom/miui/maml/RendererController;

    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_9

    .line 7
    invoke-virtual {v0}, Lcom/miui/maml/RendererController;->forceUpdate()V

    .line 10
    :cond_9
    return-void
.end method

.method public final reset()V
    .registers 3

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 2
    invoke-virtual {p0, v0, v1}, Lcom/miui/maml/elements/ScreenElement;->reset(J)V

    .line 3
    invoke-virtual {p0, v0, v1}, Lcom/miui/maml/elements/ScreenElement;->doTick(J)V

    return-void
.end method

.method public reset(J)V
    .registers 6

    .line 4
    iget-object v0, p0, Lcom/miui/maml/elements/ScreenElement;->mAnimations:Ljava/util/ArrayList;

    if-eqz v0, :cond_19

    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_9
    if-ge v1, v0, :cond_19

    .line 6
    iget-object v2, p0, Lcom/miui/maml/elements/ScreenElement;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/maml/animation/BaseAnimation;

    invoke-virtual {v2, p1, p2}, Lcom/miui/maml/animation/BaseAnimation;->reset(J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_19
    return-void
.end method

.method public resume()V
    .registers 4

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/miui/maml/elements/ScreenElement;->mResumed:Z

    .line 4
    iget-object v0, p0, Lcom/miui/maml/elements/ScreenElement;->mTriggers:Lcom/miui/maml/CommandTriggers;

    .line 6
    if-eqz v0, :cond_a

    .line 8
    invoke-virtual {v0}, Lcom/miui/maml/CommandTriggers;->resume()V

    .line 11
    :cond_a
    iget-object v0, p0, Lcom/miui/maml/elements/ScreenElement;->mAnimations:Ljava/util/ArrayList;

    .line 13
    if-eqz v0, :cond_23

    .line 15
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 18
    move-result v0

    .line 19
    const/4 v1, 0x0

    .line 20
    :goto_13
    if-ge v1, v0, :cond_23

    .line 22
    iget-object v2, p0, Lcom/miui/maml/elements/ScreenElement;->mAnimations:Ljava/util/ArrayList;

    .line 24
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 27
    move-result-object v2

    .line 28
    check-cast v2, Lcom/miui/maml/animation/BaseAnimation;

    .line 30
    invoke-virtual {v2}, Lcom/miui/maml/animation/BaseAnimation;->resume()V

    .line 33
    add-int/lit8 v1, v1, 0x1

    .line 35
    goto :goto_13

    .line 36
    :cond_23
    return-void
.end method

.method public final resumeAnim()V
    .registers 3

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 2
    invoke-virtual {p0, v0, v1}, Lcom/miui/maml/elements/ScreenElement;->resumeAnim(J)V

    .line 3
    invoke-virtual {p0, v0, v1}, Lcom/miui/maml/elements/ScreenElement;->doTick(J)V

    return-void
.end method

.method public resumeAnim(J)V
    .registers 6

    .line 4
    iget-object v0, p0, Lcom/miui/maml/elements/ScreenElement;->mAnimations:Ljava/util/ArrayList;

    if-eqz v0, :cond_19

    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_9
    if-ge v1, v0, :cond_19

    .line 6
    iget-object v2, p0, Lcom/miui/maml/elements/ScreenElement;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/maml/animation/BaseAnimation;

    invoke-virtual {v2, p1, p2}, Lcom/miui/maml/animation/BaseAnimation;->resumeAnim(J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_19
    return-void
.end method

.method public final scale(D)F
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/ScreenElement;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 3
    invoke-virtual {v0}, Lcom/miui/maml/ScreenElementRoot;->getScale()F

    .line 6
    move-result v0

    .line 7
    float-to-double v0, v0

    .line 8
    mul-double/2addr p1, v0

    .line 9
    double-to-float p1, p1

    .line 10
    return p1
.end method

.method public setActualHeight(D)V
    .registers 8

    .line 1
    iget-boolean v0, p0, Lcom/miui/maml/elements/ScreenElement;->mHasName:Z

    .line 3
    if-nez v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    iget-object v0, p0, Lcom/miui/maml/elements/ScreenElement;->mActualHeightVar:Lcom/miui/maml/data/IndexedVariable;

    .line 8
    if-nez v0, :cond_24

    .line 10
    new-instance v0, Lcom/miui/maml/data/IndexedVariable;

    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    .line 14
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    iget-object v2, p0, Lcom/miui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    .line 19
    const-string v3, "."

    .line 21
    const-string v4, "actual_h"

    .line 23
    invoke-static {v1, v2, v3, v4}, La/a;->n(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    .line 30
    move-result-object v2

    .line 31
    const/4 v3, 0x1

    .line 32
    invoke-direct {v0, v1, v2, v3}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    .line 35
    iput-object v0, p0, Lcom/miui/maml/elements/ScreenElement;->mActualHeightVar:Lcom/miui/maml/data/IndexedVariable;

    .line 37
    :cond_24
    iget-object v0, p0, Lcom/miui/maml/elements/ScreenElement;->mActualHeightVar:Lcom/miui/maml/data/IndexedVariable;

    .line 39
    invoke-virtual {v0, p1, p2}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 42
    return-void
.end method

.method public setActualWidth(D)V
    .registers 8

    .line 1
    iget-boolean v0, p0, Lcom/miui/maml/elements/ScreenElement;->mHasName:Z

    .line 3
    if-nez v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    iget-object v0, p0, Lcom/miui/maml/elements/ScreenElement;->mActualWidthVar:Lcom/miui/maml/data/IndexedVariable;

    .line 8
    if-nez v0, :cond_24

    .line 10
    new-instance v0, Lcom/miui/maml/data/IndexedVariable;

    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    .line 14
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    iget-object v2, p0, Lcom/miui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    .line 19
    const-string v3, "."

    .line 21
    const-string v4, "actual_w"

    .line 23
    invoke-static {v1, v2, v3, v4}, La/a;->n(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    .line 30
    move-result-object v2

    .line 31
    const/4 v3, 0x1

    .line 32
    invoke-direct {v0, v1, v2, v3}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    .line 35
    iput-object v0, p0, Lcom/miui/maml/elements/ScreenElement;->mActualWidthVar:Lcom/miui/maml/data/IndexedVariable;

    .line 37
    :cond_24
    iget-object v0, p0, Lcom/miui/maml/elements/ScreenElement;->mActualWidthVar:Lcom/miui/maml/data/IndexedVariable;

    .line 39
    invoke-virtual {v0, p1, p2}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 42
    return-void
.end method

.method public setAnim([Ljava/lang/String;)V
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/ScreenElement;->mAnimations:Ljava/util/ArrayList;

    .line 3
    if-eqz v0, :cond_2d

    .line 5
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->onSetAnimBefore()V

    .line 8
    iget-object v0, p0, Lcom/miui/maml/elements/ScreenElement;->mAnimations:Ljava/util/ArrayList;

    .line 10
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 13
    move-result v0

    .line 14
    const/4 v1, 0x0

    .line 15
    :goto_e
    if-ge v1, v0, :cond_2d

    .line 17
    iget-object v2, p0, Lcom/miui/maml/elements/ScreenElement;->mAnimations:Ljava/util/ArrayList;

    .line 19
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 22
    move-result-object v2

    .line 23
    check-cast v2, Lcom/miui/maml/animation/BaseAnimation;

    .line 25
    invoke-virtual {v2}, Lcom/miui/maml/animation/BaseAnimation;->getTag()Ljava/lang/String;

    .line 28
    move-result-object v3

    .line 29
    invoke-static {p1, v3}, Lcom/miui/maml/elements/ScreenElement;->isTagEnable([Ljava/lang/String;Ljava/lang/String;)Z

    .line 32
    move-result v3

    .line 33
    xor-int/lit8 v4, v3, 0x1

    .line 35
    invoke-virtual {v2, v4}, Lcom/miui/maml/animation/BaseAnimation;->setDisable(Z)V

    .line 38
    if-eqz v3, :cond_2a

    .line 40
    invoke-virtual {p0, v2}, Lcom/miui/maml/elements/ScreenElement;->onSetAnimEnable(Lcom/miui/maml/animation/BaseAnimation;)V

    .line 43
    :cond_2a
    add-int/lit8 v1, v1, 0x1

    .line 45
    goto :goto_e

    .line 46
    :cond_2d
    return-void
.end method

.method public final setAnimations(Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_16

    .line 7
    const-string v0, "."

    .line 9
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_f

    .line 15
    goto :goto_16

    .line 16
    :cond_f
    const-string v0, ","

    .line 18
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 21
    move-result-object p1

    .line 22
    goto :goto_17

    .line 23
    :cond_16
    :goto_16
    const/4 p1, 0x0

    .line 24
    :goto_17
    invoke-virtual {p0, p1}, Lcom/miui/maml/elements/ScreenElement;->setAnim([Ljava/lang/String;)V

    .line 27
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 2

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 4

    .line 1
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getRoot()Lcom/miui/maml/ScreenElementRoot;

    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/miui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    .line 7
    invoke-virtual {v0, v1}, Lcom/miui/maml/ScreenElementRoot;->removeElement(Ljava/lang/String;)V

    .line 10
    iput-object p1, p0, Lcom/miui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    .line 12
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getRoot()Lcom/miui/maml/ScreenElementRoot;

    .line 15
    move-result-object v0

    .line 16
    new-instance v1, Ljava/lang/ref/WeakReference;

    .line 18
    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 21
    invoke-virtual {v0, p1, v1}, Lcom/miui/maml/ScreenElementRoot;->addElement(Ljava/lang/String;Ljava/lang/ref/WeakReference;)V

    .line 24
    return-void
.end method

.method public setParent(Lcom/miui/maml/elements/ElementGroup;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/miui/maml/elements/ScreenElement;->mParent:Lcom/miui/maml/elements/ElementGroup;

    .line 3
    return-void
.end method

.method public show(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/miui/maml/elements/ScreenElement;->mShow:Z

    .line 3
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->updateVisibility()V

    .line 6
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->requestUpdate()V

    .line 9
    return-void
.end method

.method public showCategory(Ljava/lang/String;Z)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/ScreenElement;->mCategory:Ljava/lang/String;

    .line 3
    if-eqz v0, :cond_d

    .line 5
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    move-result p1

    .line 9
    if-eqz p1, :cond_d

    .line 11
    invoke-virtual {p0, p2}, Lcom/miui/maml/elements/ScreenElement;->show(Z)V

    .line 14
    :cond_d
    return-void
.end method

.method public tick(J)V
    .registers 4

    .line 1
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->updateVisibility()V

    .line 4
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->isVisible()Z

    .line 7
    move-result v0

    .line 8
    if-nez v0, :cond_a

    .line 10
    return-void

    .line 11
    :cond_a
    invoke-virtual {p0, p1, p2}, Lcom/miui/maml/elements/ScreenElement;->doTick(J)V

    .line 14
    return-void
.end method

.method public updateVisibility()V
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->isVisibleInner()Z

    .line 4
    move-result v0

    .line 5
    iget-boolean v1, p0, Lcom/miui/maml/elements/ScreenElement;->mIsVisible:Z

    .line 7
    if-eq v1, v0, :cond_16

    .line 9
    iput-boolean v0, p0, Lcom/miui/maml/elements/ScreenElement;->mIsVisible:Z

    .line 11
    invoke-virtual {p0, v0}, Lcom/miui/maml/elements/ScreenElement;->onVisibilityChange(Z)V

    .line 14
    if-eqz v0, :cond_16

    .line 16
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 19
    move-result-wide v0

    .line 20
    invoke-virtual {p0, v0, v1}, Lcom/miui/maml/elements/ScreenElement;->doTick(J)V

    .line 23
    :cond_16
    return-void
.end method
