.class Lmiuix/preference/PreferenceFragment$FrameDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$n;
.source "PreferenceFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/preference/PreferenceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FrameDecoration"
.end annotation


# static fields
.field private static final INNER_TAG_POS_FRIST:I = 0x1

.field private static final INNER_TAG_POS_LAST:I = 0x4

.field private static final INNER_TAG_POS_MIDDLE:I = 0x2


# instance fields
.field private mClipPaint:Landroid/graphics/Paint;

.field private mGroupBgPaint:Landroid/graphics/Paint;

.field private mGroupUnCheckedBgColor:I

.field private mHeightPixels:I

.field private mIsLayoutRtl:Z

.field private mLayoutLeftAndRightPair:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mMaskPaddingBottom:I

.field private mMaskPaddingEnd:I

.field private mMaskPaddingStart:I

.field private mMaskPaddingTop:I

.field private mMaskRadius:I

.field private mPreferenceGroupRect:Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;

.field private mPreferenceGroupRectMaps:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic this$0:Lmiuix/preference/PreferenceFragment;


# direct methods
.method private constructor <init>(Lmiuix/preference/PreferenceFragment;Landroid/content/Context;)V
    .registers 6

    .line 2
    iput-object p1, p0, Lmiuix/preference/PreferenceFragment$FrameDecoration;->this$0:Lmiuix/preference/PreferenceFragment;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$n;-><init>()V

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lmiuix/preference/PreferenceFragment$FrameDecoration;->mIsLayoutRtl:Z

    .line 4
    invoke-virtual {p0, p2}, Lmiuix/preference/PreferenceFragment$FrameDecoration;->initMaskPadding(Landroid/content/Context;)V

    .line 5
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lmiuix/preference/PreferenceFragment$FrameDecoration;->mClipPaint:Landroid/graphics/Paint;

    .line 6
    invoke-virtual {p0}, Lmiuix/preference/PreferenceFragment$FrameDecoration;->updateClipPaintColor()V

    .line 7
    iget-object p1, p0, Lmiuix/preference/PreferenceFragment$FrameDecoration;->mClipPaint:Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 8
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lmiuix/preference/PreferenceFragment$FrameDecoration;->mGroupBgPaint:Landroid/graphics/Paint;

    .line 9
    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 10
    sget p1, Lmiuix/preference/R$attr;->checkablePreferenceItemColorFilterNormal:I

    invoke-static {p2, p1}, Lmiuix/internal/util/AttributeResolver;->resolveColor(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lmiuix/preference/PreferenceFragment$FrameDecoration;->mGroupUnCheckedBgColor:I

    .line 11
    iget-object p2, p0, Lmiuix/preference/PreferenceFragment$FrameDecoration;->mGroupBgPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 12
    iget-object p1, p0, Lmiuix/preference/PreferenceFragment$FrameDecoration;->mGroupBgPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 13
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lmiuix/preference/PreferenceFragment$FrameDecoration;->mPreferenceGroupRectMaps:Ljava/util/Map;

    return-void
.end method

.method public synthetic constructor <init>(Lmiuix/preference/PreferenceFragment;Landroid/content/Context;Lmiuix/preference/PreferenceFragment$1;)V
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2}, Lmiuix/preference/PreferenceFragment$FrameDecoration;-><init>(Lmiuix/preference/PreferenceFragment;Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic access$1000(Lmiuix/preference/PreferenceFragment$FrameDecoration;)I
    .registers 1

    .line 1
    iget p0, p0, Lmiuix/preference/PreferenceFragment$FrameDecoration;->mMaskPaddingStart:I

    .line 3
    return p0
.end method

.method public static synthetic access$1100(Lmiuix/preference/PreferenceFragment$FrameDecoration;)I
    .registers 1

    .line 1
    iget p0, p0, Lmiuix/preference/PreferenceFragment$FrameDecoration;->mMaskPaddingEnd:I

    .line 3
    return p0
.end method

.method public static synthetic access$1200(Lmiuix/preference/PreferenceFragment$FrameDecoration;)I
    .registers 1

    .line 1
    iget p0, p0, Lmiuix/preference/PreferenceFragment$FrameDecoration;->mMaskRadius:I

    .line 3
    return p0
.end method

.method public static synthetic access$700(Lmiuix/preference/PreferenceFragment$FrameDecoration;)Landroid/graphics/Paint;
    .registers 1

    .line 1
    iget-object p0, p0, Lmiuix/preference/PreferenceFragment$FrameDecoration;->mClipPaint:Landroid/graphics/Paint;

    .line 3
    return-object p0
.end method

.method public static synthetic access$800(Lmiuix/preference/PreferenceFragment$FrameDecoration;)I
    .registers 1

    .line 1
    iget p0, p0, Lmiuix/preference/PreferenceFragment$FrameDecoration;->mMaskPaddingTop:I

    .line 3
    return p0
.end method

.method public static synthetic access$900(Lmiuix/preference/PreferenceFragment$FrameDecoration;)I
    .registers 1

    .line 1
    iget p0, p0, Lmiuix/preference/PreferenceFragment$FrameDecoration;->mMaskPaddingBottom:I

    .line 3
    return p0
.end method

.method private checkEndRadioButtonPreferenceCategory(Landroidx/recyclerview/widget/RecyclerView;II)Z
    .registers 6

    .line 1
    const/4 v0, 0x1

    .line 2
    add-int/2addr p2, v0

    .line 3
    const/4 v1, 0x0

    .line 4
    if-ge p2, p3, :cond_1d

    .line 6
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 9
    move-result-object p2

    .line 10
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    .line 13
    move-result p1

    .line 14
    iget-object p2, p0, Lmiuix/preference/PreferenceFragment$FrameDecoration;->this$0:Lmiuix/preference/PreferenceFragment;

    .line 16
    invoke-static {p2}, Lmiuix/preference/PreferenceFragment;->access$600(Lmiuix/preference/PreferenceFragment;)Lmiuix/preference/PreferenceGroupAdapter;

    .line 19
    move-result-object p2

    .line 20
    invoke-virtual {p2, p1}, Landroidx/preference/c;->getItem(I)Landroidx/preference/Preference;

    .line 23
    move-result-object p1

    .line 24
    instance-of p1, p1, Lmiuix/preference/RadioSetPreferenceCategory;

    .line 26
    if-eqz p1, :cond_1c

    .line 28
    return v1

    .line 29
    :cond_1c
    return v0

    .line 30
    :cond_1d
    return v1
.end method

.method private drawBg(Landroid/graphics/Canvas;IIIIZZZ)V
    .registers 12

    .line 1
    iget-object v0, p0, Lmiuix/preference/PreferenceFragment$FrameDecoration;->this$0:Lmiuix/preference/PreferenceFragment;

    invoke-static {v0}, Lmiuix/preference/PreferenceFragment;->access$1300(Lmiuix/preference/PreferenceFragment;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 2
    :cond_9
    new-instance v0, Landroid/graphics/RectF;

    int-to-float v1, p2

    int-to-float p3, p3

    int-to-float v2, p4

    int-to-float p5, p5

    invoke-direct {v0, v1, p3, v2, p5}, Landroid/graphics/RectF;-><init>(FFFF)V

    if-eqz p8, :cond_17

    .line 3
    iget v1, p0, Lmiuix/preference/PreferenceFragment$FrameDecoration;->mMaskPaddingEnd:I

    goto :goto_19

    :cond_17
    iget v1, p0, Lmiuix/preference/PreferenceFragment$FrameDecoration;->mMaskPaddingStart:I

    :goto_19
    if-eqz p8, :cond_1e

    .line 4
    iget p8, p0, Lmiuix/preference/PreferenceFragment$FrameDecoration;->mMaskPaddingStart:I

    goto :goto_20

    :cond_1e
    iget p8, p0, Lmiuix/preference/PreferenceFragment$FrameDecoration;->mMaskPaddingEnd:I

    .line 5
    :goto_20
    iget-object v2, p0, Lmiuix/preference/PreferenceFragment$FrameDecoration;->this$0:Lmiuix/preference/PreferenceFragment;

    invoke-static {v2}, Lmiuix/preference/PreferenceFragment;->access$500(Lmiuix/preference/PreferenceFragment;)I

    move-result v2

    add-int/2addr v2, v1

    .line 6
    iget-object v1, p0, Lmiuix/preference/PreferenceFragment$FrameDecoration;->this$0:Lmiuix/preference/PreferenceFragment;

    invoke-static {v1}, Lmiuix/preference/PreferenceFragment;->access$500(Lmiuix/preference/PreferenceFragment;)I

    move-result v1

    add-int/2addr v1, p8

    .line 7
    new-instance p8, Landroid/graphics/RectF;

    add-int/2addr p2, v2

    int-to-float p2, p2

    sub-int/2addr p4, v1

    int-to-float p4, p4

    invoke-direct {p8, p2, p3, p4, p5}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 8
    new-instance p2, Landroid/graphics/Path;

    invoke-direct {p2}, Landroid/graphics/Path;-><init>()V

    const/4 p3, 0x0

    if-eqz p6, :cond_43

    .line 9
    iget p4, p0, Lmiuix/preference/PreferenceFragment$FrameDecoration;->mMaskRadius:I

    int-to-float p4, p4

    goto :goto_44

    :cond_43
    move p4, p3

    :goto_44
    if-eqz p7, :cond_49

    .line 10
    iget p3, p0, Lmiuix/preference/PreferenceFragment$FrameDecoration;->mMaskRadius:I

    int-to-float p3, p3

    :cond_49
    const/16 p5, 0x8

    new-array p5, p5, [F

    const/4 p6, 0x0

    aput p4, p5, p6

    const/4 p6, 0x1

    aput p4, p5, p6

    const/4 p6, 0x2

    aput p4, p5, p6

    const/4 p6, 0x3

    aput p4, p5, p6

    const/4 p4, 0x4

    aput p3, p5, p4

    const/4 p4, 0x5

    aput p3, p5, p4

    const/4 p4, 0x6

    aput p3, p5, p4

    const/4 p4, 0x7

    aput p3, p5, p4

    .line 11
    sget-object p3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {p2, p8, p5, p3}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 12
    iget-object p3, p0, Lmiuix/preference/PreferenceFragment$FrameDecoration;->mClipPaint:Landroid/graphics/Paint;

    const/16 p4, 0x1f

    invoke-virtual {p1, v0, p3, p4}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;I)I

    move-result p3

    .line 13
    iget-object p4, p0, Lmiuix/preference/PreferenceFragment$FrameDecoration;->mClipPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p4}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 14
    iget-object p4, p0, Lmiuix/preference/PreferenceFragment$FrameDecoration;->mGroupBgPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 15
    invoke-virtual {p1, p3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method private drawMask(Landroid/graphics/Canvas;IIIIZZZZ)V
    .registers 13

    .line 1
    iget-object v0, p0, Lmiuix/preference/PreferenceFragment$FrameDecoration;->this$0:Lmiuix/preference/PreferenceFragment;

    invoke-static {v0}, Lmiuix/preference/PreferenceFragment;->access$1300(Lmiuix/preference/PreferenceFragment;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 2
    :cond_9
    new-instance v0, Landroid/graphics/RectF;

    int-to-float v1, p2

    int-to-float p3, p3

    int-to-float v2, p4

    int-to-float p5, p5

    invoke-direct {v0, v1, p3, v2, p5}, Landroid/graphics/RectF;-><init>(FFFF)V

    if-eqz p9, :cond_17

    .line 3
    iget v1, p0, Lmiuix/preference/PreferenceFragment$FrameDecoration;->mMaskPaddingEnd:I

    goto :goto_19

    :cond_17
    iget v1, p0, Lmiuix/preference/PreferenceFragment$FrameDecoration;->mMaskPaddingStart:I

    :goto_19
    if-eqz p9, :cond_1e

    .line 4
    iget p9, p0, Lmiuix/preference/PreferenceFragment$FrameDecoration;->mMaskPaddingStart:I

    goto :goto_20

    :cond_1e
    iget p9, p0, Lmiuix/preference/PreferenceFragment$FrameDecoration;->mMaskPaddingEnd:I

    .line 5
    :goto_20
    iget-object v2, p0, Lmiuix/preference/PreferenceFragment$FrameDecoration;->this$0:Lmiuix/preference/PreferenceFragment;

    invoke-static {v2}, Lmiuix/preference/PreferenceFragment;->access$500(Lmiuix/preference/PreferenceFragment;)I

    move-result v2

    add-int/2addr v2, v1

    .line 6
    iget-object v1, p0, Lmiuix/preference/PreferenceFragment$FrameDecoration;->this$0:Lmiuix/preference/PreferenceFragment;

    invoke-static {v1}, Lmiuix/preference/PreferenceFragment;->access$500(Lmiuix/preference/PreferenceFragment;)I

    move-result v1

    add-int/2addr v1, p9

    .line 7
    new-instance p9, Landroid/graphics/RectF;

    add-int/2addr p2, v2

    int-to-float p2, p2

    sub-int/2addr p4, v1

    int-to-float p4, p4

    invoke-direct {p9, p2, p3, p4, p5}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 8
    new-instance p2, Landroid/graphics/Path;

    invoke-direct {p2}, Landroid/graphics/Path;-><init>()V

    const/4 p3, 0x0

    if-eqz p6, :cond_43

    .line 9
    iget p4, p0, Lmiuix/preference/PreferenceFragment$FrameDecoration;->mMaskRadius:I

    int-to-float p4, p4

    goto :goto_44

    :cond_43
    move p4, p3

    :goto_44
    if-eqz p7, :cond_49

    .line 10
    iget p3, p0, Lmiuix/preference/PreferenceFragment$FrameDecoration;->mMaskRadius:I

    int-to-float p3, p3

    :cond_49
    const/16 p5, 0x8

    new-array p5, p5, [F

    const/4 p6, 0x0

    aput p4, p5, p6

    const/4 p6, 0x1

    aput p4, p5, p6

    const/4 p6, 0x2

    aput p4, p5, p6

    const/4 p6, 0x3

    aput p4, p5, p6

    const/4 p4, 0x4

    aput p3, p5, p4

    const/4 p4, 0x5

    aput p3, p5, p4

    const/4 p4, 0x6

    aput p3, p5, p4

    const/4 p4, 0x7

    aput p3, p5, p4

    .line 11
    sget-object p3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {p2, p9, p5, p3}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 12
    iget-object p3, p0, Lmiuix/preference/PreferenceFragment$FrameDecoration;->mClipPaint:Landroid/graphics/Paint;

    const/16 p4, 0x1f

    invoke-virtual {p1, v0, p3, p4}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;I)I

    move-result p3

    .line 13
    iget-object p4, p0, Lmiuix/preference/PreferenceFragment$FrameDecoration;->mClipPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p4}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    if-eqz p8, :cond_86

    .line 14
    iget-object p4, p0, Lmiuix/preference/PreferenceFragment$FrameDecoration;->mClipPaint:Landroid/graphics/Paint;

    new-instance p5, Landroid/graphics/PorterDuffXfermode;

    sget-object p6, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p5, p6}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p4, p5}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    goto :goto_92

    .line 15
    :cond_86
    iget-object p4, p0, Lmiuix/preference/PreferenceFragment$FrameDecoration;->mClipPaint:Landroid/graphics/Paint;

    new-instance p5, Landroid/graphics/PorterDuffXfermode;

    sget-object p6, Landroid/graphics/PorterDuff$Mode;->XOR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p5, p6}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p4, p5}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 16
    :goto_92
    iget-object p4, p0, Lmiuix/preference/PreferenceFragment$FrameDecoration;->mClipPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 17
    iget-object p2, p0, Lmiuix/preference/PreferenceFragment$FrameDecoration;->mClipPaint:Landroid/graphics/Paint;

    const/4 p4, 0x0

    invoke-virtual {p2, p4}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 18
    invoke-virtual {p1, p3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method private findNearViewY(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;IIZ)I
    .registers 7

    .line 1
    const/4 v0, -0x1

    .line 2
    if-eqz p5, :cond_25

    .line 4
    if-eqz p2, :cond_24

    .line 6
    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    .line 9
    move-result p5

    .line 10
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    .line 13
    move-result p2

    .line 14
    add-int/2addr p2, p5

    .line 15
    iget p5, p0, Lmiuix/preference/PreferenceFragment$FrameDecoration;->mHeightPixels:I

    .line 17
    if-lt p2, p5, :cond_13

    .line 19
    goto :goto_24

    .line 20
    :cond_13
    :goto_13
    add-int/lit8 p3, p3, 0x1

    .line 22
    if-ge p3, p4, :cond_3d

    .line 24
    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 27
    move-result-object p2

    .line 28
    if-eqz p2, :cond_23

    .line 30
    invoke-virtual {p2}, Landroid/view/View;->getY()F

    .line 33
    move-result p1

    .line 34
    float-to-int p1, p1

    .line 35
    return p1

    .line 36
    :cond_23
    goto :goto_13

    .line 37
    :cond_24
    :goto_24
    return v0

    .line 38
    :cond_25
    add-int/lit8 p3, p3, -0x1

    .line 40
    :goto_27
    if-le p3, p4, :cond_3d

    .line 42
    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 45
    move-result-object p2

    .line 46
    if-eqz p2, :cond_3a

    .line 48
    invoke-virtual {p2}, Landroid/view/View;->getY()F

    .line 51
    move-result p1

    .line 52
    float-to-int p1, p1

    .line 53
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    .line 56
    move-result p2

    .line 57
    add-int/2addr p2, p1

    .line 58
    return p2

    .line 59
    :cond_3a
    add-int/lit8 p3, p3, -0x1

    .line 61
    goto :goto_27

    .line 62
    :cond_3d
    return v0
.end method

.method private updateOperationTopAndBottom(Landroidx/recyclerview/widget/RecyclerView;Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;)V
    .registers 20

    .line 1
    move-object/from16 v0, p0

    .line 3
    move-object/from16 v1, p2

    .line 5
    iget-object v2, v1, Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;->preferenceList:Ljava/util/List;

    .line 7
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 10
    move-result v2

    .line 11
    const/4 v5, 0x0

    .line 12
    const/4 v6, -0x1

    .line 13
    const/4 v7, -0x1

    .line 14
    const/4 v8, 0x0

    .line 15
    const/4 v9, 0x0

    .line 16
    :goto_f
    const/4 v10, 0x2

    .line 17
    if-ge v5, v2, :cond_66

    .line 19
    iget-object v12, v1, Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;->preferenceList:Ljava/util/List;

    .line 21
    invoke-interface {v12, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 24
    move-result-object v12

    .line 25
    check-cast v12, Ljava/lang/Integer;

    .line 27
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    .line 30
    move-result v12

    .line 31
    move-object/from16 v13, p1

    .line 33
    invoke-virtual {v13, v12}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 36
    move-result-object v14

    .line 37
    if-eqz v14, :cond_63

    .line 39
    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    .line 42
    move-result v15

    .line 43
    invoke-virtual {v14}, Landroid/view/View;->getBottom()I

    .line 46
    move-result v3

    .line 47
    invoke-virtual {v14}, Landroid/view/View;->getY()F

    .line 50
    move-result v11

    .line 51
    float-to-int v11, v11

    .line 52
    invoke-virtual {v14}, Landroid/view/View;->getHeight()I

    .line 55
    move-result v16

    .line 56
    add-int v4, v16, v11

    .line 58
    if-nez v5, :cond_3f

    .line 60
    move v9, v3

    .line 61
    move v7, v4

    .line 62
    move v6, v11

    .line 63
    move v8, v15

    .line 64
    :cond_3f
    if-le v8, v15, :cond_42

    .line 66
    move v8, v15

    .line 67
    :cond_42
    if-ge v9, v3, :cond_45

    .line 69
    move v9, v3

    .line 70
    :cond_45
    if-le v6, v11, :cond_48

    .line 72
    move v6, v11

    .line 73
    :cond_48
    if-ge v7, v4, :cond_4b

    .line 75
    move v7, v4

    .line 76
    :cond_4b
    iget v3, v1, Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;->primeIndex:I

    .line 78
    if-ne v3, v12, :cond_63

    .line 80
    invoke-virtual {v14}, Landroid/view/View;->getY()F

    .line 83
    move-result v3

    .line 84
    float-to-int v3, v3

    .line 85
    invoke-virtual {v14}, Landroid/view/View;->getHeight()I

    .line 88
    move-result v4

    .line 89
    add-int/2addr v4, v3

    .line 90
    new-array v10, v10, [I

    .line 92
    const/4 v11, 0x0

    .line 93
    aput v3, v10, v11

    .line 95
    const/4 v3, 0x1

    .line 96
    aput v4, v10, v3

    .line 98
    iput-object v10, v1, Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;->currentPrimetb:[I

    .line 100
    :cond_63
    add-int/lit8 v5, v5, 0x1

    .line 102
    goto :goto_f

    .line 103
    :cond_66
    iget-object v2, v1, Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;->currentPrimetb:[I

    .line 105
    if-nez v2, :cond_74

    .line 107
    new-array v2, v10, [I

    .line 109
    const/4 v3, 0x0

    .line 110
    aput v6, v2, v3

    .line 112
    const/4 v3, 0x1

    .line 113
    aput v7, v2, v3

    .line 115
    iput-object v2, v1, Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;->currentPrimetb:[I

    .line 117
    :cond_74
    iget v2, v1, Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;->nextViewY:I

    .line 119
    const/4 v3, -0x1

    .line 120
    if-eq v2, v3, :cond_81

    .line 122
    iget v4, v1, Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;->preViewHY:I

    .line 124
    if-le v2, v4, :cond_81

    .line 126
    iget v4, v0, Lmiuix/preference/PreferenceFragment$FrameDecoration;->mMaskPaddingBottom:I

    .line 128
    sub-int v7, v2, v4

    .line 130
    :cond_81
    iget v4, v1, Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;->preViewHY:I

    .line 132
    if-eq v4, v3, :cond_8b

    .line 134
    if-ge v4, v2, :cond_8b

    .line 136
    iget v2, v0, Lmiuix/preference/PreferenceFragment$FrameDecoration;->mMaskPaddingTop:I

    .line 138
    add-int v6, v4, v2

    .line 140
    :cond_8b
    new-array v2, v10, [I

    .line 142
    const/4 v3, 0x0

    .line 143
    aput v8, v2, v3

    .line 145
    const/4 v4, 0x1

    .line 146
    aput v9, v2, v4

    .line 148
    iput-object v2, v1, Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;->currentEndtb:[I

    .line 150
    new-array v2, v10, [I

    .line 152
    aput v6, v2, v3

    .line 154
    aput v7, v2, v4

    .line 156
    iput-object v2, v1, Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;->currentMovetb:[I

    .line 158
    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$y;)V
    .registers 5

    .line 1
    iget-object p4, p0, Lmiuix/preference/PreferenceFragment$FrameDecoration;->this$0:Lmiuix/preference/PreferenceFragment;

    .line 3
    invoke-static {p4}, Lmiuix/preference/PreferenceFragment;->access$1300(Lmiuix/preference/PreferenceFragment;)Z

    .line 6
    move-result p4

    .line 7
    if-eqz p4, :cond_9

    .line 9
    return-void

    .line 10
    :cond_9
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    .line 13
    move-result p2

    .line 14
    iget-object p4, p0, Lmiuix/preference/PreferenceFragment$FrameDecoration;->this$0:Lmiuix/preference/PreferenceFragment;

    .line 16
    invoke-static {p4}, Lmiuix/preference/PreferenceFragment;->access$600(Lmiuix/preference/PreferenceFragment;)Lmiuix/preference/PreferenceGroupAdapter;

    .line 19
    move-result-object p4

    .line 20
    invoke-virtual {p4, p2}, Landroidx/preference/c;->getItem(I)Landroidx/preference/Preference;

    .line 23
    move-result-object p4

    .line 24
    if-eqz p4, :cond_65

    .line 26
    invoke-virtual {p4}, Landroidx/preference/Preference;->getParent()Landroidx/preference/PreferenceGroup;

    .line 29
    move-result-object p4

    .line 30
    instance-of p4, p4, Lmiuix/preference/RadioSetPreferenceCategory;

    .line 32
    if-eqz p4, :cond_65

    .line 34
    invoke-static {p3}, Landroidx/appcompat/widget/h1;->a(Landroid/view/View;)Z

    .line 37
    move-result p4

    .line 38
    if-eqz p4, :cond_2e

    .line 40
    invoke-virtual {p3}, Landroid/view/View;->getScrollBarSize()I

    .line 43
    move-result p3

    .line 44
    iput p3, p1, Landroid/graphics/Rect;->left:I

    .line 46
    goto :goto_34

    .line 47
    :cond_2e
    invoke-virtual {p3}, Landroid/view/View;->getScrollBarSize()I

    .line 50
    move-result p3

    .line 51
    iput p3, p1, Landroid/graphics/Rect;->right:I

    .line 53
    :goto_34
    iget-object p3, p0, Lmiuix/preference/PreferenceFragment$FrameDecoration;->this$0:Lmiuix/preference/PreferenceFragment;

    .line 55
    invoke-static {p3}, Lmiuix/preference/PreferenceFragment;->access$600(Lmiuix/preference/PreferenceFragment;)Lmiuix/preference/PreferenceGroupAdapter;

    .line 58
    move-result-object p3

    .line 59
    invoke-virtual {p3, p2}, Lmiuix/preference/PreferenceGroupAdapter;->getPositionType(I)I

    .line 62
    move-result p2

    .line 63
    const/4 p3, 0x1

    .line 64
    if-ne p2, p3, :cond_50

    .line 66
    iget p2, p1, Landroid/graphics/Rect;->top:I

    .line 68
    iget p3, p0, Lmiuix/preference/PreferenceFragment$FrameDecoration;->mMaskPaddingTop:I

    .line 70
    add-int/2addr p2, p3

    .line 71
    iput p2, p1, Landroid/graphics/Rect;->top:I

    .line 73
    iget p2, p1, Landroid/graphics/Rect;->bottom:I

    .line 75
    iget p3, p0, Lmiuix/preference/PreferenceFragment$FrameDecoration;->mMaskPaddingBottom:I

    .line 77
    add-int/2addr p2, p3

    .line 78
    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    .line 80
    goto :goto_65

    .line 81
    :cond_50
    const/4 p3, 0x2

    .line 82
    if-ne p2, p3, :cond_5b

    .line 84
    iget p2, p1, Landroid/graphics/Rect;->top:I

    .line 86
    iget p3, p0, Lmiuix/preference/PreferenceFragment$FrameDecoration;->mMaskPaddingTop:I

    .line 88
    add-int/2addr p2, p3

    .line 89
    iput p2, p1, Landroid/graphics/Rect;->top:I

    .line 91
    goto :goto_65

    .line 92
    :cond_5b
    const/4 p3, 0x4

    .line 93
    if-ne p2, p3, :cond_65

    .line 95
    iget p2, p1, Landroid/graphics/Rect;->bottom:I

    .line 97
    iget p3, p0, Lmiuix/preference/PreferenceFragment$FrameDecoration;->mMaskPaddingBottom:I

    .line 99
    add-int/2addr p2, p3

    .line 100
    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    .line 102
    :cond_65
    :goto_65
    return-void
.end method

.method public initMaskPadding(Landroid/content/Context;)V
    .registers 4

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4
    move-result-object v0

    .line 5
    sget v1, Lmiuix/preference/R$dimen;->miuix_preference_checkable_item_mask_padding_top:I

    .line 7
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 10
    move-result v0

    .line 11
    iput v0, p0, Lmiuix/preference/PreferenceFragment$FrameDecoration;->mMaskPaddingTop:I

    .line 13
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 16
    move-result-object v0

    .line 17
    sget v1, Lmiuix/preference/R$dimen;->miuix_preference_checkable_item_mask_padding_bottom:I

    .line 19
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 22
    move-result v0

    .line 23
    iput v0, p0, Lmiuix/preference/PreferenceFragment$FrameDecoration;->mMaskPaddingBottom:I

    .line 25
    sget v0, Lmiuix/preference/R$attr;->preferenceCheckableItemMaskPaddingStart:I

    .line 27
    invoke-static {p1, v0}, Lmiuix/internal/util/AttributeResolver;->resolveDimensionPixelSize(Landroid/content/Context;I)I

    .line 30
    move-result v0

    .line 31
    iput v0, p0, Lmiuix/preference/PreferenceFragment$FrameDecoration;->mMaskPaddingStart:I

    .line 33
    sget v0, Lmiuix/preference/R$attr;->preferenceCheckableItemSetMaskPaddingEnd:I

    .line 35
    invoke-static {p1, v0}, Lmiuix/internal/util/AttributeResolver;->resolveDimensionPixelSize(Landroid/content/Context;I)I

    .line 38
    move-result v0

    .line 39
    iput v0, p0, Lmiuix/preference/PreferenceFragment$FrameDecoration;->mMaskPaddingEnd:I

    .line 41
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 44
    move-result-object p1

    .line 45
    sget v0, Lmiuix/preference/R$dimen;->miuix_preference_checkable_item_mask_radius:I

    .line 47
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 50
    move-result p1

    .line 51
    iput p1, p0, Lmiuix/preference/PreferenceFragment$FrameDecoration;->mMaskRadius:I

    .line 53
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$y;)V
    .registers 25

    .line 1
    move-object/from16 v9, p0

    .line 3
    move-object/from16 v6, p2

    .line 5
    invoke-super/range {p0 .. p3}, Landroidx/recyclerview/widget/RecyclerView$n;->onDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$y;)V

    .line 8
    iget-object v0, v9, Lmiuix/preference/PreferenceFragment$FrameDecoration;->this$0:Lmiuix/preference/PreferenceFragment;

    .line 10
    invoke-static {v0}, Lmiuix/preference/PreferenceFragment;->access$1300(Lmiuix/preference/PreferenceFragment;)Z

    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_10

    .line 16
    return-void

    .line 17
    :cond_10
    iget-object v0, v9, Lmiuix/preference/PreferenceFragment$FrameDecoration;->mPreferenceGroupRectMaps:Ljava/util/Map;

    .line 19
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 22
    invoke-virtual/range {p2 .. p2}, Landroid/view/ViewGroup;->getChildCount()I

    .line 25
    move-result v7

    .line 26
    invoke-static/range {p2 .. p2}, Landroidx/appcompat/widget/h1;->a(Landroid/view/View;)Z

    .line 29
    move-result v0

    .line 30
    iput-boolean v0, v9, Lmiuix/preference/PreferenceFragment$FrameDecoration;->mIsLayoutRtl:Z

    .line 32
    iget-object v0, v9, Lmiuix/preference/PreferenceFragment$FrameDecoration;->this$0:Lmiuix/preference/PreferenceFragment;

    .line 34
    invoke-static {v0}, Lmiuix/preference/PreferenceFragment;->access$600(Lmiuix/preference/PreferenceFragment;)Lmiuix/preference/PreferenceGroupAdapter;

    .line 37
    move-result-object v0

    .line 38
    iget-boolean v1, v9, Lmiuix/preference/PreferenceFragment$FrameDecoration;->mIsLayoutRtl:Z

    .line 40
    invoke-virtual {v0, v6, v1}, Lmiuix/preference/PreferenceGroupAdapter;->getLeftAndRightWithRTL(Landroidx/recyclerview/widget/RecyclerView;Z)Landroid/util/Pair;

    .line 43
    move-result-object v0

    .line 44
    iput-object v0, v9, Lmiuix/preference/PreferenceFragment$FrameDecoration;->mLayoutLeftAndRightPair:Landroid/util/Pair;

    .line 46
    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 48
    check-cast v0, Ljava/lang/Integer;

    .line 50
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 53
    move-result v10

    .line 54
    iget-object v0, v9, Lmiuix/preference/PreferenceFragment$FrameDecoration;->mLayoutLeftAndRightPair:Landroid/util/Pair;

    .line 56
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 58
    check-cast v0, Ljava/lang/Integer;

    .line 60
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 63
    move-result v11

    .line 64
    const/4 v8, 0x0

    .line 65
    :goto_40
    const/4 v13, 0x0

    .line 66
    const/4 v14, 0x1

    .line 67
    if-ge v8, v7, :cond_122

    .line 69
    invoke-virtual {v6, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 72
    move-result-object v15

    .line 73
    invoke-virtual {v6, v15}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    .line 76
    move-result v0

    .line 77
    iget-object v1, v9, Lmiuix/preference/PreferenceFragment$FrameDecoration;->this$0:Lmiuix/preference/PreferenceFragment;

    .line 79
    invoke-static {v1}, Lmiuix/preference/PreferenceFragment;->access$600(Lmiuix/preference/PreferenceFragment;)Lmiuix/preference/PreferenceGroupAdapter;

    .line 82
    move-result-object v1

    .line 83
    invoke-virtual {v1, v0}, Landroidx/preference/c;->getItem(I)Landroidx/preference/Preference;

    .line 86
    move-result-object v5

    .line 87
    if-eqz v5, :cond_11e

    .line 89
    invoke-virtual {v5}, Landroidx/preference/Preference;->getParent()Landroidx/preference/PreferenceGroup;

    .line 92
    move-result-object v1

    .line 93
    instance-of v1, v1, Lmiuix/preference/RadioSetPreferenceCategory;

    .line 95
    if-eqz v1, :cond_11e

    .line 97
    invoke-virtual {v5}, Landroidx/preference/Preference;->getParent()Landroidx/preference/PreferenceGroup;

    .line 100
    move-result-object v1

    .line 101
    move-object/from16 v16, v1

    .line 103
    check-cast v16, Lmiuix/preference/RadioSetPreferenceCategory;

    .line 105
    iget-object v1, v9, Lmiuix/preference/PreferenceFragment$FrameDecoration;->this$0:Lmiuix/preference/PreferenceFragment;

    .line 107
    invoke-static {v1}, Lmiuix/preference/PreferenceFragment;->access$600(Lmiuix/preference/PreferenceFragment;)Lmiuix/preference/PreferenceGroupAdapter;

    .line 110
    move-result-object v1

    .line 111
    invoke-virtual {v1, v0}, Lmiuix/preference/PreferenceGroupAdapter;->getPositionType(I)I

    .line 114
    move-result v4

    .line 115
    const/4 v3, 0x2

    .line 116
    if-eq v4, v14, :cond_7e

    .line 118
    if-ne v4, v3, :cond_78

    .line 120
    goto :goto_7e

    .line 121
    :cond_78
    move/from16 v19, v3

    .line 123
    move v14, v4

    .line 124
    move-object/from16 v20, v5

    .line 126
    goto :goto_ad

    .line 127
    :cond_7e
    :goto_7e
    new-instance v2, Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;

    .line 129
    iget-object v0, v9, Lmiuix/preference/PreferenceFragment$FrameDecoration;->this$0:Lmiuix/preference/PreferenceFragment;

    .line 131
    invoke-direct {v2, v0, v13}, Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;-><init>(Lmiuix/preference/PreferenceFragment;Lmiuix/preference/PreferenceFragment$1;)V

    .line 134
    iput-object v2, v9, Lmiuix/preference/PreferenceFragment$FrameDecoration;->mPreferenceGroupRect:Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;

    .line 136
    iget v0, v2, Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;->type:I

    .line 138
    or-int/2addr v0, v14

    .line 139
    iput v0, v2, Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;->type:I

    .line 141
    iput-boolean v14, v2, Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;->startRadioButtonCategory:Z

    .line 143
    const/16 v17, 0x0

    .line 145
    const/16 v18, 0x0

    .line 147
    move-object/from16 v0, p0

    .line 149
    move-object/from16 v1, p2

    .line 151
    move-object v12, v2

    .line 152
    move-object v2, v15

    .line 153
    move/from16 v19, v3

    .line 155
    move v3, v8

    .line 156
    move v14, v4

    .line 157
    move/from16 v4, v17

    .line 159
    move-object/from16 v20, v5

    .line 161
    move/from16 v5, v18

    .line 163
    invoke-direct/range {v0 .. v5}, Lmiuix/preference/PreferenceFragment$FrameDecoration;->findNearViewY(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;IIZ)I

    .line 166
    move-result v0

    .line 167
    iput v0, v12, Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;->preViewHY:I

    .line 169
    iget-object v0, v9, Lmiuix/preference/PreferenceFragment$FrameDecoration;->mPreferenceGroupRect:Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;

    .line 171
    invoke-virtual {v0, v8}, Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;->addPreference(I)V

    .line 174
    :goto_ad
    const/4 v12, 0x4

    .line 175
    if-eq v14, v12, :cond_b3

    .line 177
    const/4 v0, 0x3

    .line 178
    if-ne v14, v0, :cond_cf

    .line 180
    :cond_b3
    iget-object v0, v9, Lmiuix/preference/PreferenceFragment$FrameDecoration;->mPreferenceGroupRect:Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;

    .line 182
    if-eqz v0, :cond_bb

    .line 184
    invoke-virtual {v0, v8}, Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;->addPreference(I)V

    .line 187
    goto :goto_c7

    .line 188
    :cond_bb
    new-instance v0, Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;

    .line 190
    iget-object v1, v9, Lmiuix/preference/PreferenceFragment$FrameDecoration;->this$0:Lmiuix/preference/PreferenceFragment;

    .line 192
    invoke-direct {v0, v1, v13}, Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;-><init>(Lmiuix/preference/PreferenceFragment;Lmiuix/preference/PreferenceFragment$1;)V

    .line 195
    iput-object v0, v9, Lmiuix/preference/PreferenceFragment$FrameDecoration;->mPreferenceGroupRect:Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;

    .line 197
    invoke-virtual {v0, v8}, Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;->addPreference(I)V

    .line 200
    :goto_c7
    iget-object v0, v9, Lmiuix/preference/PreferenceFragment$FrameDecoration;->mPreferenceGroupRect:Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;

    .line 202
    iget v1, v0, Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;->type:I

    .line 204
    or-int/lit8 v1, v1, 0x2

    .line 206
    iput v1, v0, Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;->type:I

    .line 208
    :cond_cf
    invoke-virtual/range {v16 .. v16}, Lmiuix/preference/RadioSetPreferenceCategory;->getPrimaryPreference()Lmiuix/preference/RadioButtonPreference;

    .line 211
    move-result-object v0

    .line 212
    move-object/from16 v1, v20

    .line 214
    if-ne v0, v1, :cond_dd

    .line 216
    iget-object v0, v9, Lmiuix/preference/PreferenceFragment$FrameDecoration;->mPreferenceGroupRect:Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;

    .line 218
    if-eqz v0, :cond_dd

    .line 220
    iput v8, v0, Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;->primeIndex:I

    .line 222
    :cond_dd
    iget-object v5, v9, Lmiuix/preference/PreferenceFragment$FrameDecoration;->mPreferenceGroupRect:Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;

    .line 224
    if-eqz v5, :cond_11e

    .line 226
    const/4 v0, 0x1

    .line 227
    if-eq v14, v0, :cond_e6

    .line 229
    if-ne v14, v12, :cond_11e

    .line 231
    :cond_e6
    const/4 v14, 0x1

    .line 232
    move-object/from16 v0, p0

    .line 234
    move-object/from16 v1, p2

    .line 236
    move-object v2, v15

    .line 237
    move v3, v8

    .line 238
    move v4, v7

    .line 239
    move-object v15, v5

    .line 240
    move v5, v14

    .line 241
    invoke-direct/range {v0 .. v5}, Lmiuix/preference/PreferenceFragment$FrameDecoration;->findNearViewY(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;IIZ)I

    .line 244
    move-result v0

    .line 245
    iput v0, v15, Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;->nextViewY:I

    .line 247
    iget-object v0, v9, Lmiuix/preference/PreferenceFragment$FrameDecoration;->mPreferenceGroupRect:Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;

    .line 249
    iget-object v1, v9, Lmiuix/preference/PreferenceFragment$FrameDecoration;->mPreferenceGroupRectMaps:Ljava/util/Map;

    .line 251
    invoke-interface {v1}, Ljava/util/Map;->size()I

    .line 254
    move-result v1

    .line 255
    iput v1, v0, Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;->index:I

    .line 257
    iget-object v0, v9, Lmiuix/preference/PreferenceFragment$FrameDecoration;->mPreferenceGroupRect:Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;

    .line 259
    invoke-direct {v9, v6, v8, v7}, Lmiuix/preference/PreferenceFragment$FrameDecoration;->checkEndRadioButtonPreferenceCategory(Landroidx/recyclerview/widget/RecyclerView;II)Z

    .line 262
    move-result v1

    .line 263
    iput-boolean v1, v0, Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;->endRadioButtonCategory:Z

    .line 265
    iget-object v0, v9, Lmiuix/preference/PreferenceFragment$FrameDecoration;->mPreferenceGroupRect:Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;

    .line 267
    iget v1, v0, Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;->type:I

    .line 269
    or-int/2addr v1, v12

    .line 270
    iput v1, v0, Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;->type:I

    .line 272
    iget-object v1, v9, Lmiuix/preference/PreferenceFragment$FrameDecoration;->mPreferenceGroupRectMaps:Ljava/util/Map;

    .line 274
    iget v0, v0, Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;->index:I

    .line 276
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 279
    move-result-object v0

    .line 280
    iget-object v2, v9, Lmiuix/preference/PreferenceFragment$FrameDecoration;->mPreferenceGroupRect:Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;

    .line 282
    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    iput-object v13, v9, Lmiuix/preference/PreferenceFragment$FrameDecoration;->mPreferenceGroupRect:Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;

    .line 287
    :cond_11e
    add-int/lit8 v8, v8, 0x1

    .line 289
    goto/16 :goto_40

    .line 291
    :cond_122
    iget-object v0, v9, Lmiuix/preference/PreferenceFragment$FrameDecoration;->mPreferenceGroupRect:Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;

    .line 293
    if-eqz v0, :cond_14f

    .line 295
    iget-object v0, v0, Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;->preferenceList:Ljava/util/List;

    .line 297
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 300
    move-result v0

    .line 301
    if-lez v0, :cond_14f

    .line 303
    iget-object v0, v9, Lmiuix/preference/PreferenceFragment$FrameDecoration;->mPreferenceGroupRect:Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;

    .line 305
    const/4 v1, -0x1

    .line 306
    iput v1, v0, Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;->nextViewY:I

    .line 308
    iget-object v1, v9, Lmiuix/preference/PreferenceFragment$FrameDecoration;->mPreferenceGroupRectMaps:Ljava/util/Map;

    .line 310
    invoke-interface {v1}, Ljava/util/Map;->size()I

    .line 313
    move-result v1

    .line 314
    iput v1, v0, Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;->index:I

    .line 316
    iget-object v0, v9, Lmiuix/preference/PreferenceFragment$FrameDecoration;->mPreferenceGroupRect:Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;

    .line 318
    const/4 v1, 0x0

    .line 319
    iput-boolean v1, v0, Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;->endRadioButtonCategory:Z

    .line 321
    iget-object v1, v9, Lmiuix/preference/PreferenceFragment$FrameDecoration;->mPreferenceGroupRectMaps:Ljava/util/Map;

    .line 323
    iget v0, v0, Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;->index:I

    .line 325
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 328
    move-result-object v0

    .line 329
    iget-object v2, v9, Lmiuix/preference/PreferenceFragment$FrameDecoration;->mPreferenceGroupRect:Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;

    .line 331
    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    iput-object v13, v9, Lmiuix/preference/PreferenceFragment$FrameDecoration;->mPreferenceGroupRect:Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;

    .line 336
    :cond_14f
    iget-object v0, v9, Lmiuix/preference/PreferenceFragment$FrameDecoration;->mPreferenceGroupRectMaps:Ljava/util/Map;

    .line 338
    if-eqz v0, :cond_1b9

    .line 340
    invoke-interface {v0}, Ljava/util/Map;->size()I

    .line 343
    move-result v0

    .line 344
    if-lez v0, :cond_1b9

    .line 346
    iget-object v0, v9, Lmiuix/preference/PreferenceFragment$FrameDecoration;->mPreferenceGroupRectMaps:Ljava/util/Map;

    .line 348
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 351
    move-result-object v0

    .line 352
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 355
    move-result-object v0

    .line 356
    :goto_163
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 359
    move-result v1

    .line 360
    if-eqz v1, :cond_179

    .line 362
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 365
    move-result-object v1

    .line 366
    check-cast v1, Ljava/util/Map$Entry;

    .line 368
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 371
    move-result-object v1

    .line 372
    check-cast v1, Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;

    .line 374
    invoke-direct {v9, v6, v1}, Lmiuix/preference/PreferenceFragment$FrameDecoration;->updateOperationTopAndBottom(Landroidx/recyclerview/widget/RecyclerView;Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;)V

    .line 377
    goto :goto_163

    .line 378
    :cond_179
    iget-object v0, v9, Lmiuix/preference/PreferenceFragment$FrameDecoration;->mPreferenceGroupRectMaps:Ljava/util/Map;

    .line 380
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 383
    move-result-object v0

    .line 384
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 387
    move-result-object v12

    .line 388
    :goto_183
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    .line 391
    move-result v0

    .line 392
    if-eqz v0, :cond_1b9

    .line 394
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 397
    move-result-object v0

    .line 398
    check-cast v0, Ljava/util/Map$Entry;

    .line 400
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 403
    move-result-object v0

    .line 404
    check-cast v0, Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;

    .line 406
    iget-object v1, v0, Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;->currentMovetb:[I

    .line 408
    const/4 v13, 0x0

    .line 409
    aget v3, v1, v13

    .line 411
    const/4 v14, 0x1

    .line 412
    aget v5, v1, v14

    .line 414
    iget v0, v0, Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;->type:I

    .line 416
    and-int/lit8 v1, v0, 0x1

    .line 418
    if-eqz v1, :cond_1a5

    .line 420
    move v6, v14

    .line 421
    goto :goto_1a6

    .line 422
    :cond_1a5
    move v6, v13

    .line 423
    :goto_1a6
    and-int/lit8 v0, v0, 0x4

    .line 425
    if-eqz v0, :cond_1ac

    .line 427
    move v7, v14

    .line 428
    goto :goto_1ad

    .line 429
    :cond_1ac
    move v7, v13

    .line 430
    :goto_1ad
    iget-boolean v8, v9, Lmiuix/preference/PreferenceFragment$FrameDecoration;->mIsLayoutRtl:Z

    .line 432
    move-object/from16 v0, p0

    .line 434
    move-object/from16 v1, p1

    .line 436
    move v2, v10

    .line 437
    move v4, v11

    .line 438
    invoke-direct/range {v0 .. v8}, Lmiuix/preference/PreferenceFragment$FrameDecoration;->drawBg(Landroid/graphics/Canvas;IIIIZZZ)V

    .line 441
    goto :goto_183

    .line 442
    :cond_1b9
    return-void
.end method

.method public onDrawOver(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$y;)V
    .registers 23

    .line 1
    move-object/from16 v10, p0

    .line 3
    iget-object v0, v10, Lmiuix/preference/PreferenceFragment$FrameDecoration;->this$0:Lmiuix/preference/PreferenceFragment;

    .line 5
    invoke-static {v0}, Lmiuix/preference/PreferenceFragment;->access$1300(Lmiuix/preference/PreferenceFragment;)Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_b

    .line 11
    return-void

    .line 12
    :cond_b
    iget-object v0, v10, Lmiuix/preference/PreferenceFragment$FrameDecoration;->mLayoutLeftAndRightPair:Landroid/util/Pair;

    .line 14
    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 16
    check-cast v0, Ljava/lang/Integer;

    .line 18
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 21
    move-result v11

    .line 22
    iget-object v0, v10, Lmiuix/preference/PreferenceFragment$FrameDecoration;->mLayoutLeftAndRightPair:Landroid/util/Pair;

    .line 24
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 26
    check-cast v0, Ljava/lang/Integer;

    .line 28
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 31
    move-result v12

    .line 32
    iget-object v0, v10, Lmiuix/preference/PreferenceFragment$FrameDecoration;->mPreferenceGroupRectMaps:Ljava/util/Map;

    .line 34
    if-eqz v0, :cond_93

    .line 36
    invoke-interface {v0}, Ljava/util/Map;->size()I

    .line 39
    move-result v0

    .line 40
    if-lez v0, :cond_93

    .line 42
    iget-object v0, v10, Lmiuix/preference/PreferenceFragment$FrameDecoration;->mPreferenceGroupRectMaps:Ljava/util/Map;

    .line 44
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 47
    move-result-object v0

    .line 48
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 51
    move-result-object v13

    .line 52
    :goto_33
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    .line 55
    move-result v0

    .line 56
    if-eqz v0, :cond_93

    .line 58
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 61
    move-result-object v0

    .line 62
    check-cast v0, Ljava/util/Map$Entry;

    .line 64
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 67
    move-result-object v0

    .line 68
    move-object v14, v0

    .line 69
    check-cast v14, Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;

    .line 71
    iget-object v0, v14, Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;->currentMovetb:[I

    .line 73
    const/4 v15, 0x0

    .line 74
    aget v16, v0, v15

    .line 76
    const/16 v17, 0x1

    .line 78
    aget v18, v0, v17

    .line 80
    iget v0, v10, Lmiuix/preference/PreferenceFragment$FrameDecoration;->mMaskPaddingTop:I

    .line 82
    sub-int v3, v16, v0

    .line 84
    const/4 v6, 0x0

    .line 85
    const/4 v7, 0x0

    .line 86
    const/4 v8, 0x1

    .line 87
    iget-boolean v9, v10, Lmiuix/preference/PreferenceFragment$FrameDecoration;->mIsLayoutRtl:Z

    .line 89
    move-object/from16 v0, p0

    .line 91
    move-object/from16 v1, p1

    .line 93
    move v2, v11

    .line 94
    move v4, v12

    .line 95
    move/from16 v5, v16

    .line 97
    invoke-direct/range {v0 .. v9}, Lmiuix/preference/PreferenceFragment$FrameDecoration;->drawMask(Landroid/graphics/Canvas;IIIIZZZZ)V

    .line 100
    iget v0, v10, Lmiuix/preference/PreferenceFragment$FrameDecoration;->mMaskPaddingBottom:I

    .line 102
    add-int v5, v18, v0

    .line 104
    iget-boolean v9, v10, Lmiuix/preference/PreferenceFragment$FrameDecoration;->mIsLayoutRtl:Z

    .line 106
    move-object/from16 v0, p0

    .line 108
    move/from16 v3, v18

    .line 110
    invoke-direct/range {v0 .. v9}, Lmiuix/preference/PreferenceFragment$FrameDecoration;->drawMask(Landroid/graphics/Canvas;IIIIZZZZ)V

    .line 113
    iget v0, v14, Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;->type:I

    .line 115
    and-int/lit8 v1, v0, 0x1

    .line 117
    if-eqz v1, :cond_79

    .line 119
    move/from16 v6, v17

    .line 121
    goto :goto_7a

    .line 122
    :cond_79
    move v6, v15

    .line 123
    :goto_7a
    and-int/lit8 v0, v0, 0x4

    .line 125
    if-eqz v0, :cond_81

    .line 127
    move/from16 v7, v17

    .line 129
    goto :goto_82

    .line 130
    :cond_81
    move v7, v15

    .line 131
    :goto_82
    const/4 v8, 0x0

    .line 132
    iget-boolean v9, v10, Lmiuix/preference/PreferenceFragment$FrameDecoration;->mIsLayoutRtl:Z

    .line 134
    move-object/from16 v0, p0

    .line 136
    move-object/from16 v1, p1

    .line 138
    move v2, v11

    .line 139
    move/from16 v3, v16

    .line 141
    move v4, v12

    .line 142
    move/from16 v5, v18

    .line 144
    invoke-direct/range {v0 .. v9}, Lmiuix/preference/PreferenceFragment$FrameDecoration;->drawMask(Landroid/graphics/Canvas;IIIIZZZZ)V

    .line 147
    goto :goto_33

    .line 148
    :cond_93
    return-void
.end method

.method public updateClipPaintColor()V
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/preference/PreferenceFragment$FrameDecoration;->this$0:Lmiuix/preference/PreferenceFragment;

    .line 3
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 6
    move-result-object v0

    .line 7
    instance-of v0, v0, Lmiuix/appcompat/app/AppCompatActivity;

    .line 9
    if-eqz v0, :cond_2a

    .line 11
    iget-object v0, p0, Lmiuix/preference/PreferenceFragment$FrameDecoration;->this$0:Lmiuix/preference/PreferenceFragment;

    .line 13
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lmiuix/appcompat/app/AppCompatActivity;

    .line 19
    invoke-virtual {v0}, Lmiuix/appcompat/app/AppCompatActivity;->isInFloatingWindowMode()Z

    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_2a

    .line 25
    iget-object v0, p0, Lmiuix/preference/PreferenceFragment$FrameDecoration;->mClipPaint:Landroid/graphics/Paint;

    .line 27
    iget-object v1, p0, Lmiuix/preference/PreferenceFragment$FrameDecoration;->this$0:Lmiuix/preference/PreferenceFragment;

    .line 29
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 32
    move-result-object v1

    .line 33
    sget v2, Lmiuix/preference/R$attr;->preferenceNormalCheckableMaskColor:I

    .line 35
    invoke-static {v1, v2}, Lmiuix/internal/util/AttributeResolver;->resolveColor(Landroid/content/Context;I)I

    .line 38
    move-result v1

    .line 39
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 42
    goto :goto_3b

    .line 43
    :cond_2a
    iget-object v0, p0, Lmiuix/preference/PreferenceFragment$FrameDecoration;->mClipPaint:Landroid/graphics/Paint;

    .line 45
    iget-object v1, p0, Lmiuix/preference/PreferenceFragment$FrameDecoration;->this$0:Lmiuix/preference/PreferenceFragment;

    .line 47
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 50
    move-result-object v1

    .line 51
    sget v2, Lmiuix/preference/R$attr;->preferenceCheckableMaskColor:I

    .line 53
    invoke-static {v1, v2}, Lmiuix/internal/util/AttributeResolver;->resolveColor(Landroid/content/Context;I)I

    .line 56
    move-result v1

    .line 57
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 60
    :goto_3b
    return-void
.end method

.method public updateWindowHeight(I)V
    .registers 2

    .line 1
    iput p1, p0, Lmiuix/preference/PreferenceFragment$FrameDecoration;->mHeightPixels:I

    .line 3
    return-void
.end method
