.class Lmiuix/preference/PreferenceGroupAdapter;
.super Landroidx/preference/c;
.source "PreferenceGroupAdapter.java"

# interfaces
.implements Lmiuix/animation/internal/BlinkStateObserver;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "RestrictedApi"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/preference/PreferenceGroupAdapter$PositionDescriptor;
    }
.end annotation


# static fields
.field private static final STATES_TAGS:[I

.field private static final STATE_SET_FIRST:[I

.field private static final STATE_SET_LAST:[I

.field private static final STATE_SET_MIDDLE:[I

.field private static final STATE_SET_NO_LINE:[I

.field private static final STATE_SET_NO_TITLE:[I

.field private static final STATE_SET_SINGLE:[I

.field public static final TAG_CARD_VIEW:Ljava/lang/String; = "CardView"

.field public static final TYPE_FIRST:I = 0x2

.field public static final TYPE_LAST:I = 0x4

.field public static final TYPE_MIDDLE:I = 0x3

.field public static final TYPE_SINGLE:I = 0x1


# instance fields
.field private mCheckableFilterColorChecked:I

.field private mCheckableFilterColorNormal:I

.field private mClipPaint:Landroid/graphics/Paint;

.field private mDescriptors:[Lmiuix/preference/PreferenceGroupAdapter$PositionDescriptor;

.field private mExtraPaddingHorizontal:I

.field private mFolmeBlink:Lmiuix/animation/controller/FolmeBlink;

.field private mHighlightItemView:Landroid/view/View;

.field private mHighlightPosition:I

.field private mItemTouchOnHighlightListener:Landroidx/recyclerview/widget/RecyclerView$r;

.field private mMaskPaddingBottom:I

.field private mMaskPaddingEnd:I

.field private mMaskPaddingStart:I

.field private mMaskPaddingTop:I

.field private mMaskRadius:I

.field private mNeedCancelHighlightRequest:Z

.field private final mObserver:Landroidx/recyclerview/widget/RecyclerView$i;

.field private mParentTouchOnHighlightListener:Landroid/view/View$OnTouchListener;

.field private mPreferenceHighLightChildRadius:I

.field private mRadioSetItemPaddingEndExtra:I

.field private mRadioSetItemPaddingStartExtra:I

.field private mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public static constructor <clinit>()V
    .registers 10

    .line 1
    const/4 v0, 0x6

    .line 2
    new-array v0, v0, [I

    .line 4
    const/4 v1, 0x0

    .line 5
    const v2, 0x10100a3

    .line 8
    aput v2, v0, v1

    .line 10
    const/4 v3, 0x1

    .line 11
    const v4, 0x10100a4

    .line 14
    aput v4, v0, v3

    .line 16
    const/4 v5, 0x2

    .line 17
    const v6, 0x10100a5

    .line 20
    aput v6, v0, v5

    .line 22
    const/4 v5, 0x3

    .line 23
    const v7, 0x10100a6

    .line 26
    aput v7, v0, v5

    .line 28
    sget v5, Lmiuix/preference/R$attr;->state_no_title:I

    .line 30
    const/4 v8, 0x4

    .line 31
    aput v5, v0, v8

    .line 33
    sget v8, Lmiuix/preference/R$attr;->state_no_line:I

    .line 35
    const/4 v9, 0x5

    .line 36
    aput v8, v0, v9

    .line 38
    sput-object v0, Lmiuix/preference/PreferenceGroupAdapter;->STATES_TAGS:[I

    .line 40
    invoke-static {v0}, Ljava/util/Arrays;->sort([I)V

    .line 43
    new-array v0, v3, [I

    .line 45
    aput v2, v0, v1

    .line 47
    sput-object v0, Lmiuix/preference/PreferenceGroupAdapter;->STATE_SET_SINGLE:[I

    .line 49
    new-array v0, v3, [I

    .line 51
    aput v4, v0, v1

    .line 53
    sput-object v0, Lmiuix/preference/PreferenceGroupAdapter;->STATE_SET_FIRST:[I

    .line 55
    new-array v0, v3, [I

    .line 57
    aput v6, v0, v1

    .line 59
    sput-object v0, Lmiuix/preference/PreferenceGroupAdapter;->STATE_SET_MIDDLE:[I

    .line 61
    new-array v0, v3, [I

    .line 63
    aput v7, v0, v1

    .line 65
    sput-object v0, Lmiuix/preference/PreferenceGroupAdapter;->STATE_SET_LAST:[I

    .line 67
    new-array v0, v3, [I

    .line 69
    aput v5, v0, v1

    .line 71
    sput-object v0, Lmiuix/preference/PreferenceGroupAdapter;->STATE_SET_NO_TITLE:[I

    .line 73
    new-array v0, v3, [I

    .line 75
    aput v8, v0, v1

    .line 77
    sput-object v0, Lmiuix/preference/PreferenceGroupAdapter;->STATE_SET_NO_LINE:[I

    .line 79
    return-void
.end method

.method public constructor <init>(Landroidx/preference/PreferenceGroup;)V
    .registers 4

    .line 1
    invoke-direct {p0, p1}, Landroidx/preference/c;-><init>(Landroidx/preference/PreferenceGroup;)V

    .line 4
    new-instance v0, Lmiuix/preference/PreferenceGroupAdapter$1;

    .line 6
    invoke-direct {v0, p0}, Lmiuix/preference/PreferenceGroupAdapter$1;-><init>(Lmiuix/preference/PreferenceGroupAdapter;)V

    .line 9
    iput-object v0, p0, Lmiuix/preference/PreferenceGroupAdapter;->mObserver:Landroidx/recyclerview/widget/RecyclerView$i;

    .line 11
    const/4 v0, 0x0

    .line 12
    iput v0, p0, Lmiuix/preference/PreferenceGroupAdapter;->mRadioSetItemPaddingEndExtra:I

    .line 14
    iput v0, p0, Lmiuix/preference/PreferenceGroupAdapter;->mExtraPaddingHorizontal:I

    .line 16
    const/4 v1, -0x1

    .line 17
    iput v1, p0, Lmiuix/preference/PreferenceGroupAdapter;->mHighlightPosition:I

    .line 19
    const/4 v1, 0x0

    .line 20
    iput-object v1, p0, Lmiuix/preference/PreferenceGroupAdapter;->mHighlightItemView:Landroid/view/View;

    .line 22
    iput-boolean v0, p0, Lmiuix/preference/PreferenceGroupAdapter;->mNeedCancelHighlightRequest:Z

    .line 24
    iput-object v1, p0, Lmiuix/preference/PreferenceGroupAdapter;->mParentTouchOnHighlightListener:Landroid/view/View$OnTouchListener;

    .line 26
    iput-object v1, p0, Lmiuix/preference/PreferenceGroupAdapter;->mItemTouchOnHighlightListener:Landroidx/recyclerview/widget/RecyclerView$r;

    .line 28
    invoke-virtual {p0}, Landroidx/preference/c;->getItemCount()I

    .line 31
    move-result v0

    .line 32
    new-array v0, v0, [Lmiuix/preference/PreferenceGroupAdapter$PositionDescriptor;

    .line 34
    iput-object v0, p0, Lmiuix/preference/PreferenceGroupAdapter;->mDescriptors:[Lmiuix/preference/PreferenceGroupAdapter$PositionDescriptor;

    .line 36
    invoke-virtual {p1}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    .line 39
    move-result-object p1

    .line 40
    invoke-virtual {p0, p1}, Lmiuix/preference/PreferenceGroupAdapter;->initAttr(Landroid/content/Context;)V

    .line 43
    return-void
.end method

.method private ableToUseFolmeAnim(Landroidx/preference/Preference;)Z
    .registers 3

    .line 1
    instance-of v0, p1, Landroidx/preference/PreferenceCategory;

    .line 3
    if-nez v0, :cond_1e

    .line 5
    instance-of v0, p1, Lmiuix/preference/RadioButtonPreference;

    .line 7
    if-eqz v0, :cond_10

    .line 9
    invoke-virtual {p1}, Landroidx/preference/Preference;->getParent()Landroidx/preference/PreferenceGroup;

    .line 12
    move-result-object v0

    .line 13
    instance-of v0, v0, Lmiuix/preference/RadioSetPreferenceCategory;

    .line 15
    if-eqz v0, :cond_1e

    .line 17
    :cond_10
    instance-of v0, p1, Lmiuix/preference/FolmeAnimationController;

    .line 19
    if-eqz v0, :cond_1c

    .line 21
    check-cast p1, Lmiuix/preference/FolmeAnimationController;

    .line 23
    invoke-interface {p1}, Lmiuix/preference/FolmeAnimationController;->isTouchAnimationEnable()Z

    .line 26
    move-result p1

    .line 27
    if-eqz p1, :cond_1e

    .line 29
    :cond_1c
    const/4 p1, 0x1

    .line 30
    goto :goto_1f

    .line 31
    :cond_1e
    const/4 p1, 0x0

    .line 32
    :goto_1f
    return p1
.end method

.method public static synthetic access$002(Lmiuix/preference/PreferenceGroupAdapter;[Lmiuix/preference/PreferenceGroupAdapter$PositionDescriptor;)[Lmiuix/preference/PreferenceGroupAdapter$PositionDescriptor;
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/preference/PreferenceGroupAdapter;->mDescriptors:[Lmiuix/preference/PreferenceGroupAdapter$PositionDescriptor;

    .line 3
    return-object p1
.end method

.method public static synthetic access$100(Lmiuix/preference/PreferenceGroupAdapter;)Landroid/view/View;
    .registers 1

    .line 1
    iget-object p0, p0, Lmiuix/preference/PreferenceGroupAdapter;->mHighlightItemView:Landroid/view/View;

    .line 3
    return-object p0
.end method

.method public static synthetic access$200(Lmiuix/preference/PreferenceGroupAdapter;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lmiuix/preference/PreferenceGroupAdapter;->mNeedCancelHighlightRequest:Z

    .line 3
    return p0
.end method

.method public static synthetic access$202(Lmiuix/preference/PreferenceGroupAdapter;Z)Z
    .registers 2

    .line 1
    iput-boolean p1, p0, Lmiuix/preference/PreferenceGroupAdapter;->mNeedCancelHighlightRequest:Z

    .line 3
    return p1
.end method

.method public static synthetic access$300(Lmiuix/preference/PreferenceGroupAdapter;)I
    .registers 1

    .line 1
    iget p0, p0, Lmiuix/preference/PreferenceGroupAdapter;->mHighlightPosition:I

    .line 3
    return p0
.end method

.method public static synthetic access$302(Lmiuix/preference/PreferenceGroupAdapter;I)I
    .registers 2

    .line 1
    iput p1, p0, Lmiuix/preference/PreferenceGroupAdapter;->mHighlightPosition:I

    .line 3
    return p1
.end method

.method private drawDrawable(Landroid/graphics/drawable/Drawable;ZZ)V
    .registers 12

    .line 1
    instance-of v0, p1, Lmiuix/preference/drawable/MaskTaggingDrawable;

    .line 3
    if-eqz v0, :cond_42

    .line 5
    check-cast p1, Lmiuix/preference/drawable/MaskTaggingDrawable;

    .line 7
    const/4 v0, 0x1

    .line 8
    invoke-virtual {p1, v0}, Lmiuix/preference/drawable/MaskTaggingDrawable;->setMaskEnabled(Z)V

    .line 11
    iget-object v2, p0, Lmiuix/preference/PreferenceGroupAdapter;->mClipPaint:Landroid/graphics/Paint;

    .line 13
    iget v3, p0, Lmiuix/preference/PreferenceGroupAdapter;->mMaskPaddingTop:I

    .line 15
    iget v4, p0, Lmiuix/preference/PreferenceGroupAdapter;->mMaskPaddingBottom:I

    .line 17
    iget v0, p0, Lmiuix/preference/PreferenceGroupAdapter;->mMaskPaddingStart:I

    .line 19
    iget v1, p0, Lmiuix/preference/PreferenceGroupAdapter;->mExtraPaddingHorizontal:I

    .line 21
    add-int v5, v0, v1

    .line 23
    iget v0, p0, Lmiuix/preference/PreferenceGroupAdapter;->mMaskPaddingEnd:I

    .line 25
    add-int v6, v0, v1

    .line 27
    iget v7, p0, Lmiuix/preference/PreferenceGroupAdapter;->mMaskRadius:I

    .line 29
    move-object v1, p1

    .line 30
    invoke-virtual/range {v1 .. v7}, Lmiuix/preference/drawable/MaskTaggingDrawable;->setClipPaint(Landroid/graphics/Paint;IIIII)V

    .line 33
    iget-object v0, p0, Lmiuix/preference/PreferenceGroupAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 35
    invoke-static {v0}, Landroidx/appcompat/widget/h1;->a(Landroid/view/View;)Z

    .line 38
    move-result v0

    .line 39
    iget-object v1, p0, Lmiuix/preference/PreferenceGroupAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 41
    invoke-virtual {p0, v1, v0}, Lmiuix/preference/PreferenceGroupAdapter;->getLeftAndRightWithRTL(Landroidx/recyclerview/widget/RecyclerView;Z)Landroid/util/Pair;

    .line 44
    move-result-object v1

    .line 45
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 47
    check-cast v2, Ljava/lang/Integer;

    .line 49
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 52
    move-result v2

    .line 53
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 55
    check-cast v1, Ljava/lang/Integer;

    .line 57
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 60
    move-result v1

    .line 61
    invoke-virtual {p1, v2, v1, v0}, Lmiuix/preference/drawable/MaskTaggingDrawable;->setLeftRight(IIZ)V

    .line 64
    invoke-virtual {p1, p2, p3}, Lmiuix/preference/drawable/MaskTaggingDrawable;->updateDrawCorner(ZZ)V

    .line 67
    :cond_42
    return-void
.end method

.method private drawRadioSetPreferenceCategory(Lmiuix/preference/RadioButtonPreferenceCategory;)V
    .registers 6

    .line 1
    invoke-virtual {p1}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_17

    .line 2
    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v2

    .line 3
    instance-of v3, v2, Lmiuix/preference/RadioSetPreferenceCategory;

    if-eqz v3, :cond_14

    .line 4
    check-cast v2, Lmiuix/preference/RadioSetPreferenceCategory;

    .line 5
    invoke-direct {p0, v2}, Lmiuix/preference/PreferenceGroupAdapter;->drawRadioSetPreferenceCategory(Lmiuix/preference/RadioSetPreferenceCategory;)V

    :cond_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_17
    return-void
.end method

.method private drawRadioSetPreferenceCategory(Lmiuix/preference/RadioSetPreferenceCategory;)V
    .registers 7

    .line 6
    invoke-virtual {p1}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    .line 7
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v0, :cond_27

    .line 8
    invoke-virtual {p1, v2}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v3

    if-eqz v3, :cond_24

    .line 9
    invoke-virtual {p0, v3}, Landroidx/preference/c;->getPreferenceAdapterPosition(Landroidx/preference/Preference;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_24

    .line 10
    iget-object v4, p0, Lmiuix/preference/PreferenceGroupAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_24

    .line 11
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_24
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 12
    :cond_27
    invoke-direct {p0, v1}, Lmiuix/preference/PreferenceGroupAdapter;->drawViews(Ljava/util/List;)V

    return-void
.end method

.method private drawView(Landroid/view/View;ZZ)V
    .registers 4

    .line 1
    if-eqz p1, :cond_9

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 6
    move-result-object p1

    .line 7
    invoke-direct {p0, p1, p2, p3}, Lmiuix/preference/PreferenceGroupAdapter;->drawDrawable(Landroid/graphics/drawable/Drawable;ZZ)V

    .line 10
    :cond_9
    return-void
.end method

.method private drawViews(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 6
    move-result v2

    .line 7
    if-ge v1, v2, :cond_23

    .line 9
    const/4 v2, 0x1

    .line 10
    if-nez v1, :cond_d

    .line 12
    move v3, v2

    .line 13
    goto :goto_e

    .line 14
    :cond_d
    move v3, v0

    .line 15
    :goto_e
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 18
    move-result v4

    .line 19
    sub-int/2addr v4, v2

    .line 20
    if-ne v1, v4, :cond_16

    .line 22
    goto :goto_17

    .line 23
    :cond_16
    move v2, v0

    .line 24
    :goto_17
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 27
    move-result-object v4

    .line 28
    check-cast v4, Landroid/view/View;

    .line 30
    invoke-direct {p0, v4, v3, v2}, Lmiuix/preference/PreferenceGroupAdapter;->drawView(Landroid/view/View;ZZ)V

    .line 33
    add-int/lit8 v1, v1, 0x1

    .line 35
    goto :goto_2

    .line 36
    :cond_23
    return-void
.end method

.method private getAllVisiblePreferences(Landroidx/preference/PreferenceGroup;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/preference/PreferenceGroup;",
            ")",
            "Ljava/util/List<",
            "Landroidx/preference/Preference;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    const/4 v1, 0x0

    .line 7
    :goto_6
    invoke-virtual {p1}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    .line 10
    move-result v2

    .line 11
    if-ge v1, v2, :cond_1c

    .line 13
    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    .line 16
    move-result-object v2

    .line 17
    invoke-virtual {v2}, Landroidx/preference/Preference;->isVisible()Z

    .line 20
    move-result v3

    .line 21
    if-eqz v3, :cond_19

    .line 23
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 26
    :cond_19
    add-int/lit8 v1, v1, 0x1

    .line 28
    goto :goto_6

    .line 29
    :cond_1c
    return-object v0
.end method

.method private getPreferenceDescriptor(Landroidx/preference/Preference;I)V
    .registers 10

    .line 1
    if-ltz p2, :cond_19

    .line 3
    iget-object v0, p0, Lmiuix/preference/PreferenceGroupAdapter;->mDescriptors:[Lmiuix/preference/PreferenceGroupAdapter$PositionDescriptor;

    .line 5
    array-length v1, v0

    .line 6
    if-ge p2, v1, :cond_19

    .line 8
    aget-object v1, v0, p2

    .line 10
    if-nez v1, :cond_12

    .line 12
    new-instance v1, Lmiuix/preference/PreferenceGroupAdapter$PositionDescriptor;

    .line 14
    invoke-direct {v1, p0}, Lmiuix/preference/PreferenceGroupAdapter$PositionDescriptor;-><init>(Lmiuix/preference/PreferenceGroupAdapter;)V

    .line 17
    aput-object v1, v0, p2

    .line 19
    :cond_12
    iget-object v0, p0, Lmiuix/preference/PreferenceGroupAdapter;->mDescriptors:[Lmiuix/preference/PreferenceGroupAdapter$PositionDescriptor;

    .line 21
    aget-object v0, v0, p2

    .line 23
    iget-object v0, v0, Lmiuix/preference/PreferenceGroupAdapter$PositionDescriptor;->status:[I

    .line 25
    goto :goto_1a

    .line 26
    :cond_19
    const/4 v0, 0x0

    .line 27
    :goto_1a
    if-nez v0, :cond_c4

    .line 29
    invoke-virtual {p1}, Landroidx/preference/Preference;->getParent()Landroidx/preference/PreferenceGroup;

    .line 32
    move-result-object v0

    .line 33
    if-eqz v0, :cond_c4

    .line 35
    invoke-direct {p0, v0}, Lmiuix/preference/PreferenceGroupAdapter;->getAllVisiblePreferences(Landroidx/preference/PreferenceGroup;)Ljava/util/List;

    .line 38
    move-result-object v0

    .line 39
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 42
    move-result v1

    .line 43
    if-eqz v1, :cond_2d

    .line 45
    return-void

    .line 46
    :cond_2d
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 49
    move-result v1

    .line 50
    const/4 v2, 0x1

    .line 51
    const/4 v3, 0x0

    .line 52
    if-ne v1, v2, :cond_39

    .line 54
    sget-object v0, Lmiuix/preference/PreferenceGroupAdapter;->STATE_SET_SINGLE:[I

    .line 56
    move v1, v2

    .line 57
    goto :goto_61

    .line 58
    :cond_39
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 61
    move-result-object v1

    .line 62
    check-cast v1, Landroidx/preference/Preference;

    .line 64
    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->compareTo(Landroidx/preference/Preference;)I

    .line 67
    move-result v1

    .line 68
    if-nez v1, :cond_49

    .line 70
    sget-object v0, Lmiuix/preference/PreferenceGroupAdapter;->STATE_SET_FIRST:[I

    .line 72
    const/4 v1, 0x2

    .line 73
    goto :goto_61

    .line 74
    :cond_49
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 77
    move-result v1

    .line 78
    sub-int/2addr v1, v2

    .line 79
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 82
    move-result-object v0

    .line 83
    check-cast v0, Landroidx/preference/Preference;

    .line 85
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->compareTo(Landroidx/preference/Preference;)I

    .line 88
    move-result v0

    .line 89
    if-nez v0, :cond_5e

    .line 91
    sget-object v0, Lmiuix/preference/PreferenceGroupAdapter;->STATE_SET_LAST:[I

    .line 93
    const/4 v1, 0x4

    .line 94
    goto :goto_61

    .line 95
    :cond_5e
    sget-object v0, Lmiuix/preference/PreferenceGroupAdapter;->STATE_SET_MIDDLE:[I

    .line 97
    const/4 v1, 0x3

    .line 98
    :goto_61
    instance-of v4, p1, Landroidx/preference/PreferenceCategory;

    .line 100
    if-eqz v4, :cond_bc

    .line 102
    check-cast p1, Landroidx/preference/PreferenceCategory;

    .line 104
    instance-of v4, p1, Lmiuix/preference/PreferenceCategory;

    .line 106
    if-eqz v4, :cond_7b

    .line 108
    check-cast p1, Lmiuix/preference/PreferenceCategory;

    .line 110
    invoke-virtual {p1}, Lmiuix/preference/PreferenceCategory;->isDividerLineNeeded()Z

    .line 113
    move-result v4

    .line 114
    xor-int/2addr v4, v2

    .line 115
    invoke-virtual {p1}, Lmiuix/preference/PreferenceCategory;->hasTitle()Z

    .line 118
    move-result p1

    .line 119
    if-nez p1, :cond_79

    .line 121
    goto :goto_84

    .line 122
    :cond_79
    move v2, v3

    .line 123
    goto :goto_84

    .line 124
    :cond_7b
    invoke-virtual {p1}, Landroidx/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    .line 127
    move-result-object p1

    .line 128
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 131
    move-result v2

    .line 132
    move v4, v3

    .line 133
    :goto_84
    if-nez v4, :cond_88

    .line 135
    if-eqz v2, :cond_bc

    .line 137
    :cond_88
    if-eqz v4, :cond_94

    .line 139
    sget-object p1, Lmiuix/preference/PreferenceGroupAdapter;->STATE_SET_NO_LINE:[I

    .line 141
    array-length v4, p1

    .line 142
    new-array v4, v4, [I

    .line 144
    array-length v5, p1

    .line 145
    invoke-static {p1, v3, v4, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 148
    goto :goto_96

    .line 149
    :cond_94
    new-array v4, v3, [I

    .line 151
    :goto_96
    if-eqz v2, :cond_a2

    .line 153
    sget-object p1, Lmiuix/preference/PreferenceGroupAdapter;->STATE_SET_NO_TITLE:[I

    .line 155
    array-length v2, p1

    .line 156
    new-array v2, v2, [I

    .line 158
    array-length v5, p1

    .line 159
    invoke-static {p1, v3, v2, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 162
    goto :goto_a4

    .line 163
    :cond_a2
    new-array v2, v3, [I

    .line 165
    :goto_a4
    array-length p1, v4

    .line 166
    array-length v5, v2

    .line 167
    add-int/2addr p1, v5

    .line 168
    array-length v5, v0

    .line 169
    add-int/2addr p1, v5

    .line 170
    new-array p1, p1, [I

    .line 172
    array-length v5, v4

    .line 173
    invoke-static {v4, v3, p1, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 176
    array-length v5, v4

    .line 177
    array-length v6, v2

    .line 178
    invoke-static {v2, v3, p1, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 181
    array-length v4, v4

    .line 182
    array-length v2, v2

    .line 183
    add-int/2addr v4, v2

    .line 184
    array-length v2, v0

    .line 185
    invoke-static {v0, v3, p1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 188
    move-object v0, p1

    .line 189
    :cond_bc
    iget-object p1, p0, Lmiuix/preference/PreferenceGroupAdapter;->mDescriptors:[Lmiuix/preference/PreferenceGroupAdapter$PositionDescriptor;

    .line 191
    aget-object p1, p1, p2

    .line 193
    iput-object v0, p1, Lmiuix/preference/PreferenceGroupAdapter$PositionDescriptor;->status:[I

    .line 195
    iput v1, p1, Lmiuix/preference/PreferenceGroupAdapter$PositionDescriptor;->type:I

    .line 197
    :cond_c4
    return-void
.end method

.method private isArrowRightVisible(Landroidx/preference/Preference;)Z
    .registers 3

    .line 1
    invoke-virtual {p1}, Landroidx/preference/Preference;->getIntent()Landroid/content/Intent;

    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_1d

    .line 7
    invoke-virtual {p1}, Landroidx/preference/Preference;->getFragment()Ljava/lang/String;

    .line 10
    move-result-object v0

    .line 11
    if-nez v0, :cond_1d

    .line 13
    invoke-virtual {p1}, Landroidx/preference/Preference;->getOnPreferenceClickListener()Landroidx/preference/Preference$d;

    .line 16
    move-result-object v0

    .line 17
    if-eqz v0, :cond_16

    .line 19
    instance-of v0, p1, Landroidx/preference/TwoStatePreference;

    .line 21
    if-eqz v0, :cond_1d

    .line 23
    :cond_16
    instance-of p1, p1, Landroidx/preference/DialogPreference;

    .line 25
    if-eqz p1, :cond_1b

    .line 27
    goto :goto_1d

    .line 28
    :cond_1b
    const/4 p1, 0x0

    .line 29
    goto :goto_1e

    .line 30
    :cond_1d
    :goto_1d
    const/4 p1, 0x1

    .line 31
    :goto_1e
    return p1
.end method

.method private setPreferenceItemForegroundForHighLightChild(Landroid/view/View;Lmiuix/appcompat/app/AlphaBlendingDrawable;)V
    .registers 8

    .line 1
    instance-of v0, p1, Landroid/view/ViewGroup;

    .line 3
    if-eqz v0, :cond_50

    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Landroid/view/ViewGroup;

    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_50

    .line 15
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 22
    move-result-object v1

    .line 23
    const-string v2, "CardView"

    .line 25
    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_50

    .line 31
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    .line 34
    move-result v1

    .line 35
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    .line 38
    move-result v2

    .line 39
    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    .line 42
    move-result v3

    .line 43
    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    .line 46
    move-result p1

    .line 47
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 50
    move-result-object v4

    .line 51
    instance-of v4, v4, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 53
    if-eqz v4, :cond_48

    .line 55
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 58
    move-result-object v0

    .line 59
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 61
    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 63
    add-int/2addr v1, v4

    .line 64
    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 66
    add-int/2addr v2, v4

    .line 67
    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 69
    add-int/2addr v3, v4

    .line 70
    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 72
    add-int/2addr p1, v0

    .line 73
    :cond_48
    iget v0, p0, Lmiuix/preference/PreferenceGroupAdapter;->mPreferenceHighLightChildRadius:I

    .line 75
    invoke-virtual {p2, v0}, Lmiuix/appcompat/app/AlphaBlendingDrawable;->setRadius(I)V

    .line 78
    invoke-virtual {p2, v1, v2, v3, p1}, Lmiuix/appcompat/app/AlphaBlendingDrawable;->setInset(IIII)V

    .line 81
    :cond_50
    return-void
.end method

.method private startHighlight(Landroid/view/View;)V
    .registers 5

    .line 1
    sget v0, Lmiuix/preference/R$id;->preference_highlighted:I

    .line 3
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 5
    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 8
    iget-object v0, p0, Lmiuix/preference/PreferenceGroupAdapter;->mFolmeBlink:Lmiuix/animation/controller/FolmeBlink;

    .line 10
    const/4 v1, 0x0

    .line 11
    if-nez v0, :cond_1d

    .line 13
    const/4 v0, 0x1

    .line 14
    new-array v0, v0, [Landroid/view/View;

    .line 16
    aput-object p1, v0, v1

    .line 18
    invoke-static {v0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 21
    move-result-object v0

    .line 22
    invoke-interface {v0}, Lmiuix/animation/IFolme;->blink()Lmiuix/animation/IBlinkStyle;

    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Lmiuix/animation/controller/FolmeBlink;

    .line 28
    iput-object v0, p0, Lmiuix/preference/PreferenceGroupAdapter;->mFolmeBlink:Lmiuix/animation/controller/FolmeBlink;

    .line 30
    :cond_1d
    iget-object v0, p0, Lmiuix/preference/PreferenceGroupAdapter;->mFolmeBlink:Lmiuix/animation/controller/FolmeBlink;

    .line 32
    invoke-virtual {v0, p0}, Lmiuix/animation/controller/FolmeBlink;->attach(Lmiuix/animation/internal/BlinkStateObserver;)V

    .line 35
    iget-object v0, p0, Lmiuix/preference/PreferenceGroupAdapter;->mFolmeBlink:Lmiuix/animation/controller/FolmeBlink;

    .line 37
    const/4 v2, 0x3

    .line 38
    new-array v1, v1, [Lmiuix/animation/base/AnimConfig;

    .line 40
    invoke-virtual {v0, v2, v1}, Lmiuix/animation/controller/FolmeBlink;->startBlink(I[Lmiuix/animation/base/AnimConfig;)V

    .line 43
    iput-object p1, p0, Lmiuix/preference/PreferenceGroupAdapter;->mHighlightItemView:Landroid/view/View;

    .line 45
    return-void
.end method

.method private updateViewBackgroundMask(Landroidx/preference/Preference;)V
    .registers 3

    .line 1
    if-eqz p1, :cond_1c

    .line 3
    iget-object v0, p0, Lmiuix/preference/PreferenceGroupAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 5
    if-eqz v0, :cond_1c

    .line 7
    instance-of v0, p1, Lmiuix/preference/RadioButtonPreferenceCategory;

    .line 9
    if-eqz v0, :cond_10

    .line 11
    check-cast p1, Lmiuix/preference/RadioButtonPreferenceCategory;

    .line 13
    invoke-direct {p0, p1}, Lmiuix/preference/PreferenceGroupAdapter;->drawRadioSetPreferenceCategory(Lmiuix/preference/RadioButtonPreferenceCategory;)V

    .line 16
    goto :goto_1c

    .line 17
    :cond_10
    instance-of v0, p1, Lmiuix/preference/RadioSetPreferenceCategory;

    .line 19
    if-eqz v0, :cond_1a

    .line 21
    check-cast p1, Lmiuix/preference/RadioSetPreferenceCategory;

    .line 23
    invoke-direct {p0, p1}, Lmiuix/preference/PreferenceGroupAdapter;->drawRadioSetPreferenceCategory(Lmiuix/preference/RadioSetPreferenceCategory;)V

    .line 26
    goto :goto_1c

    .line 27
    :cond_1a
    instance-of p1, p1, Lmiuix/preference/RadioButtonPreference;

    .line 29
    :cond_1c
    :goto_1c
    return-void
.end method


# virtual methods
.method public checkHighlight(Landroidx/preference/h;I)V
    .registers 4

    .line 1
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 3
    iget v0, p0, Lmiuix/preference/PreferenceGroupAdapter;->mHighlightPosition:I

    .line 5
    if-ne p2, v0, :cond_21

    .line 7
    iget-boolean p2, p0, Lmiuix/preference/PreferenceGroupAdapter;->mNeedCancelHighlightRequest:Z

    .line 9
    if-nez p2, :cond_1d

    .line 11
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 13
    sget v0, Lmiuix/preference/R$id;->preference_highlighted:I

    .line 15
    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {p2, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    .line 22
    move-result p2

    .line 23
    if-eqz p2, :cond_19

    .line 25
    return-void

    .line 26
    :cond_19
    invoke-direct {p0, p1}, Lmiuix/preference/PreferenceGroupAdapter;->startHighlight(Landroid/view/View;)V

    .line 29
    goto :goto_32

    .line 30
    :cond_1d
    const/4 p1, 0x0

    .line 31
    iput-boolean p1, p0, Lmiuix/preference/PreferenceGroupAdapter;->mNeedCancelHighlightRequest:Z

    .line 33
    goto :goto_32

    .line 34
    :cond_21
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 36
    sget v0, Lmiuix/preference/R$id;->preference_highlighted:I

    .line 38
    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {p2, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    .line 45
    move-result p2

    .line 46
    if-eqz p2, :cond_32

    .line 48
    invoke-virtual {p0, p1}, Lmiuix/preference/PreferenceGroupAdapter;->stopHighlight(Landroid/view/View;)V

    .line 51
    :cond_32
    :goto_32
    return-void
.end method

.method public getLeftAndRightWithRTL(Landroidx/recyclerview/widget/RecyclerView;Z)Landroid/util/Pair;
    .registers 4

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getScrollBarSize()I

    .line 4
    move-result v0

    .line 5
    if-eqz p2, :cond_d

    .line 7
    mul-int/lit8 v0, v0, 0x3

    .line 9
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 12
    move-result p1

    .line 13
    goto :goto_16

    .line 14
    :cond_d
    const/4 p2, 0x0

    .line 15
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 18
    move-result p1

    .line 19
    mul-int/lit8 v0, v0, 0x3

    .line 21
    sub-int/2addr p1, v0

    .line 22
    move v0, p2

    .line 23
    :goto_16
    new-instance p2, Landroid/util/Pair;

    .line 25
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 28
    move-result-object v0

    .line 29
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 32
    move-result-object p1

    .line 33
    invoke-direct {p2, v0, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 36
    return-object p2
.end method

.method public getPositionType(I)I
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/preference/PreferenceGroupAdapter;->mDescriptors:[Lmiuix/preference/PreferenceGroupAdapter$PositionDescriptor;

    .line 3
    aget-object p1, v0, p1

    .line 5
    iget p1, p1, Lmiuix/preference/PreferenceGroupAdapter$PositionDescriptor;->type:I

    .line 7
    return p1
.end method

.method public initAttr(Landroid/content/Context;)V
    .registers 3

    .line 1
    sget v0, Lmiuix/preference/R$attr;->preferenceRadioSetChildExtraPaddingStart:I

    .line 3
    invoke-static {p1, v0}, Lmiuix/internal/util/AttributeResolver;->resolveDimensionPixelSize(Landroid/content/Context;I)I

    .line 6
    move-result v0

    .line 7
    iput v0, p0, Lmiuix/preference/PreferenceGroupAdapter;->mRadioSetItemPaddingStartExtra:I

    .line 9
    sget v0, Lmiuix/preference/R$attr;->checkablePreferenceItemColorFilterChecked:I

    .line 11
    invoke-static {p1, v0}, Lmiuix/internal/util/AttributeResolver;->resolveColor(Landroid/content/Context;I)I

    .line 14
    move-result v0

    .line 15
    iput v0, p0, Lmiuix/preference/PreferenceGroupAdapter;->mCheckableFilterColorChecked:I

    .line 17
    sget v0, Lmiuix/preference/R$attr;->checkablePreferenceItemColorFilterNormal:I

    .line 19
    invoke-static {p1, v0}, Lmiuix/internal/util/AttributeResolver;->resolveColor(Landroid/content/Context;I)I

    .line 22
    move-result v0

    .line 23
    iput v0, p0, Lmiuix/preference/PreferenceGroupAdapter;->mCheckableFilterColorNormal:I

    .line 25
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 28
    move-result-object p1

    .line 29
    sget v0, Lmiuix/preference/R$dimen;->miuix_preference_high_light_radius:I

    .line 31
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 34
    move-result p1

    .line 35
    iput p1, p0, Lmiuix/preference/PreferenceGroupAdapter;->mPreferenceHighLightChildRadius:I

    .line 37
    return-void
.end method

.method public isHighlightRequested()Z
    .registers 3

    .line 1
    iget v0, p0, Lmiuix/preference/PreferenceGroupAdapter;->mHighlightPosition:I

    .line 3
    const/4 v1, -0x1

    .line 4
    if-eq v0, v1, :cond_7

    .line 6
    const/4 v0, 0x1

    .line 7
    goto :goto_8

    .line 8
    :cond_7
    const/4 v0, 0x0

    .line 9
    :goto_8
    return v0
.end method

.method public onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 4
    iget-object v0, p0, Lmiuix/preference/PreferenceGroupAdapter;->mObserver:Landroidx/recyclerview/widget/RecyclerView$i;

    .line 6
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$i;)V

    .line 9
    iput-object p1, p0, Lmiuix/preference/PreferenceGroupAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 11
    return-void
.end method

.method public onBindViewHolder(Landroidx/preference/h;I)V
    .registers 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    .line 2
    invoke-super/range {p0 .. p2}, Landroidx/preference/c;->onBindViewHolder(Landroidx/preference/h;I)V

    .line 3
    iget-object v3, v1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lmiuix/view/CompatViewMethod;->setForceDarkAllowed(Landroid/view/View;Z)V

    .line 4
    invoke-virtual {v0, v2}, Landroidx/preference/c;->getItem(I)Landroidx/preference/Preference;

    move-result-object v3

    .line 5
    invoke-direct {v0, v3, v2}, Lmiuix/preference/PreferenceGroupAdapter;->getPreferenceDescriptor(Landroidx/preference/Preference;I)V

    .line 6
    iget-object v5, v0, Lmiuix/preference/PreferenceGroupAdapter;->mDescriptors:[Lmiuix/preference/PreferenceGroupAdapter$PositionDescriptor;

    aget-object v5, v5, v2

    iget-object v5, v5, Lmiuix/preference/PreferenceGroupAdapter$PositionDescriptor;->status:[I

    .line 7
    iget-object v6, v1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 8
    iget v13, v0, Lmiuix/preference/PreferenceGroupAdapter;->mExtraPaddingHorizontal:I

    .line 9
    instance-of v7, v6, Landroid/graphics/drawable/LayerDrawable;

    const/4 v14, 0x0

    if-eqz v7, :cond_92

    if-eqz v3, :cond_92

    .line 10
    move-object v7, v6

    check-cast v7, Landroid/graphics/drawable/LayerDrawable;

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object v15, v7

    invoke-virtual/range {v15 .. v20}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    .line 11
    instance-of v8, v3, Lmiuix/preference/RadioButtonPreference;

    if-nez v8, :cond_7c

    instance-of v8, v3, Landroidx/preference/PreferenceCategory;

    if-nez v8, :cond_7c

    .line 12
    invoke-virtual {v3}, Landroidx/preference/Preference;->getParent()Landroidx/preference/PreferenceGroup;

    move-result-object v8

    instance-of v8, v8, Lmiuix/preference/RadioSetPreferenceCategory;

    if-nez v8, :cond_7c

    iget-object v8, v1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    sget v9, Lmiuix/preference/R$id;->miuix_preference_navigation:I

    .line 13
    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    if-eqz v8, :cond_57

    goto :goto_7c

    .line 14
    :cond_57
    invoke-virtual {v6, v14}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 15
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    .line 16
    move-object v8, v6

    check-cast v8, Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {v8, v4}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v8

    if-eqz v8, :cond_92

    .line 17
    iget v8, v7, Landroid/graphics/Rect;->left:I

    add-int/2addr v8, v13

    .line 18
    iget v9, v7, Landroid/graphics/Rect;->right:I

    add-int/2addr v9, v13

    .line 19
    iget-object v10, v1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    iget v11, v7, Landroid/graphics/Rect;->top:I

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v10, v8, v11, v9, v7}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_92

    :cond_7c
    :goto_7c
    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    move v9, v13

    move v11, v13

    .line 20
    invoke-virtual/range {v7 .. v12}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    .line 21
    new-instance v7, Lmiuix/preference/drawable/MaskTaggingDrawable;

    invoke-direct {v7, v6}, Lmiuix/preference/drawable/MaskTaggingDrawable;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 22
    iget-object v6, v1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    invoke-virtual {v6, v7}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 23
    invoke-virtual {v7, v14}, Lmiuix/internal/graphics/drawable/DrawableWrapperCompat;->setColorFilter(Landroid/graphics/ColorFilter;)V

    move-object v6, v7

    .line 24
    :cond_92
    :goto_92
    nop

    instance-of v7, v6, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v7, :cond_ad

    move-object v7, v6

    check-cast v7, Landroid/graphics/drawable/StateListDrawable;

    sget-object v8, Lmiuix/preference/PreferenceGroupAdapter;->STATES_TAGS:[I

    invoke-static {v7, v8}, Lmiuix/internal/graphics/drawable/TaggingDrawable;->containsTagState(Landroid/graphics/drawable/StateListDrawable;[I)Z

    move-result v7

    if-eqz v7, :cond_ad

    .line 25
    new-instance v7, Lmiuix/preference/drawable/MaskTaggingDrawable;

    invoke-direct {v7, v6}, Lmiuix/preference/drawable/MaskTaggingDrawable;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 26
    iget-object v6, v1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    invoke-virtual {v6, v7}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    move-object v6, v7

    .line 27
    :cond_ad
    nop

    instance-of v7, v6, Lmiuix/preference/drawable/MaskTaggingDrawable;

    if-eqz v7, :cond_194

    .line 28
    check-cast v6, Lmiuix/preference/drawable/MaskTaggingDrawable;

    if-eqz v5, :cond_b9

    .line 29
    invoke-virtual {v6, v5}, Lmiuix/internal/graphics/drawable/TaggingDrawable;->setTaggingState([I)Z

    .line 30
    :cond_b9
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 31
    invoke-virtual {v6, v5}, Lmiuix/internal/graphics/drawable/DrawableWrapperCompat;->getPadding(Landroid/graphics/Rect;)Z

    move-result v7

    if-eqz v7, :cond_171

    .line 32
    iget v7, v5, Landroid/graphics/Rect;->left:I

    .line 33
    iget v8, v5, Landroid/graphics/Rect;->right:I

    .line 34
    invoke-virtual {v3}, Landroidx/preference/Preference;->getParent()Landroidx/preference/PreferenceGroup;

    move-result-object v9

    instance-of v9, v9, Lmiuix/preference/RadioSetPreferenceCategory;

    if-eqz v9, :cond_d3

    .line 35
    iget v9, v0, Lmiuix/preference/PreferenceGroupAdapter;->mRadioSetItemPaddingEndExtra:I

    add-int/2addr v8, v9

    .line 36
    :cond_d3
    iget-object v9, v0, Lmiuix/preference/PreferenceGroupAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v9}, Landroidx/appcompat/widget/h1;->a(Landroid/view/View;)Z

    move-result v9

    if-eqz v9, :cond_dd

    move v9, v7

    goto :goto_de

    :cond_dd
    move v9, v8

    :goto_de
    iput v9, v5, Landroid/graphics/Rect;->right:I

    .line 37
    iget-object v9, v0, Lmiuix/preference/PreferenceGroupAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v9}, Landroidx/appcompat/widget/h1;->a(Landroid/view/View;)Z

    move-result v9

    if-eqz v9, :cond_e9

    move v7, v8

    :cond_e9
    iput v7, v5, Landroid/graphics/Rect;->left:I

    .line 38
    invoke-virtual {v3}, Landroidx/preference/Preference;->getParent()Landroidx/preference/PreferenceGroup;

    move-result-object v7

    instance-of v7, v7, Lmiuix/preference/RadioSetPreferenceCategory;

    if-eqz v7, :cond_167

    .line 39
    iget-object v7, v1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    .line 40
    instance-of v8, v7, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v8, :cond_100

    .line 41
    check-cast v7, Landroid/view/ViewGroup$MarginLayoutParams;

    goto :goto_106

    .line 42
    :cond_100
    new-instance v8, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v8, v7}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    move-object v7, v8

    .line 43
    :goto_106
    iget-object v8, v0, Lmiuix/preference/PreferenceGroupAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v8}, Landroid/view/View;->getScrollBarSize()I

    move-result v8

    mul-int/lit8 v8, v8, 0x2

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 44
    iget-object v8, v1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    invoke-virtual {v8, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 45
    invoke-virtual {v3}, Landroidx/preference/Preference;->getParent()Landroidx/preference/PreferenceGroup;

    move-result-object v7

    check-cast v7, Lmiuix/preference/RadioSetPreferenceCategory;

    .line 46
    invoke-virtual {v6, v4}, Lmiuix/preference/drawable/MaskTaggingDrawable;->setMaskEnabled(Z)V

    .line 47
    invoke-virtual {v7}, Lmiuix/preference/RadioSetPreferenceCategory;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_128

    iget v7, v0, Lmiuix/preference/PreferenceGroupAdapter;->mCheckableFilterColorChecked:I

    goto :goto_12a

    :cond_128
    iget v7, v0, Lmiuix/preference/PreferenceGroupAdapter;->mCheckableFilterColorNormal:I

    :goto_12a
    sget-object v8, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    .line 48
    invoke-virtual {v6, v7, v8}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 49
    iget-object v7, v0, Lmiuix/preference/PreferenceGroupAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v7, :cond_16a

    .line 50
    instance-of v8, v3, Lmiuix/preference/RadioButtonPreference;

    .line 51
    invoke-virtual {v7}, Landroid/view/View;->getScrollBarSize()I

    move-result v7

    .line 52
    iget-object v9, v0, Lmiuix/preference/PreferenceGroupAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v9}, Landroidx/appcompat/widget/h1;->a(Landroid/view/View;)Z

    move-result v9

    if-eqz v9, :cond_154

    .line 53
    iget v9, v5, Landroid/graphics/Rect;->right:I

    if-eqz v8, :cond_147

    move v8, v4

    goto :goto_149

    :cond_147
    iget v8, v0, Lmiuix/preference/PreferenceGroupAdapter;->mRadioSetItemPaddingStartExtra:I

    :goto_149
    add-int/2addr v9, v8

    iput v9, v5, Landroid/graphics/Rect;->right:I

    .line 54
    iget v8, v5, Landroid/graphics/Rect;->left:I

    mul-int/lit8 v7, v7, 0x3

    sub-int/2addr v8, v7

    iput v8, v5, Landroid/graphics/Rect;->left:I

    goto :goto_16a

    .line 55
    :cond_154
    iget v9, v5, Landroid/graphics/Rect;->left:I

    if-eqz v8, :cond_15a

    move v8, v4

    goto :goto_15c

    :cond_15a
    iget v8, v0, Lmiuix/preference/PreferenceGroupAdapter;->mRadioSetItemPaddingStartExtra:I

    :goto_15c
    add-int/2addr v9, v8

    iput v9, v5, Landroid/graphics/Rect;->left:I

    .line 56
    iget v8, v5, Landroid/graphics/Rect;->right:I

    mul-int/lit8 v7, v7, 0x3

    sub-int/2addr v8, v7

    iput v8, v5, Landroid/graphics/Rect;->right:I

    goto :goto_16a

    .line 57
    :cond_167
    invoke-virtual {v6, v14}, Lmiuix/internal/graphics/drawable/DrawableWrapperCompat;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 58
    :cond_16a
    :goto_16a
    iget v7, v5, Landroid/graphics/Rect;->left:I

    add-int/2addr v7, v13

    .line 59
    iget v8, v5, Landroid/graphics/Rect;->right:I

    add-int/2addr v8, v13

    goto :goto_173

    :cond_171
    move v7, v4

    move v8, v7

    .line 60
    :goto_173
    iget-object v9, v1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    iget v10, v5, Landroid/graphics/Rect;->top:I

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v9, v7, v10, v8, v5}, Landroid/view/View;->setPadding(IIII)V

    .line 61
    instance-of v5, v3, Lmiuix/preference/RadioButtonPreference;

    if-eqz v5, :cond_194

    move-object v5, v3

    check-cast v5, Lmiuix/preference/RadioButtonPreference;

    invoke-virtual {v5}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_194

    const/4 v5, 0x1

    new-array v5, v5, [I

    const v7, 0x10100a0

    aput v7, v5, v4

    .line 62
    invoke-virtual {v6, v5}, Lmiuix/internal/graphics/drawable/TaggingDrawable;->setTaggingState([I)Z

    .line 63
    :cond_194
    iget-object v5, v1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    sget v6, Lmiuix/preference/R$id;->arrow_right:I

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_1ab

    .line 64
    invoke-direct {v0, v3}, Lmiuix/preference/PreferenceGroupAdapter;->isArrowRightVisible(Landroidx/preference/Preference;)Z

    move-result v6

    if-eqz v6, :cond_1a6

    move v6, v4

    goto :goto_1a8

    :cond_1a6
    const/16 v6, 0x8

    :goto_1a8
    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 65
    :cond_1ab
    invoke-direct {v0, v3}, Lmiuix/preference/PreferenceGroupAdapter;->ableToUseFolmeAnim(Landroidx/preference/Preference;)Z

    move-result v5

    if-eqz v5, :cond_201

    .line 66
    iget-object v5, v1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    sget v6, Lmiuix/preference/R$id;->miuix_preference_navigation:I

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    if-nez v5, :cond_1dd

    .line 67
    invoke-virtual {v3}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v5

    sget v6, Lmiuix/preference/R$attr;->preferenceItemForeground:I

    invoke-static {v5, v6}, Lmiuix/internal/util/AttributeResolver;->resolveDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 68
    instance-of v6, v5, Lmiuix/appcompat/app/AlphaBlendingDrawable;

    if-eqz v6, :cond_1d7

    .line 69
    move-object v6, v5

    check-cast v6, Lmiuix/appcompat/app/AlphaBlendingDrawable;

    invoke-virtual {v6, v4}, Lmiuix/appcompat/app/AlphaBlendingDrawable;->setRadius(I)V

    .line 70
    invoke-virtual {v6, v4, v4, v4, v4}, Lmiuix/appcompat/app/AlphaBlendingDrawable;->setInset(IIII)V

    .line 71
    iget-object v4, v1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    invoke-direct {v0, v4, v6}, Lmiuix/preference/PreferenceGroupAdapter;->setPreferenceItemForegroundForHighLightChild(Landroid/view/View;Lmiuix/appcompat/app/AlphaBlendingDrawable;)V

    .line 72
    :cond_1d7
    iget-object v4, v1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/view/View;->setForeground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_201

    .line 73
    :cond_1dd
    iget-object v4, v1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    invoke-virtual {v3}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v5

    sget v6, Lmiuix/preference/R$attr;->navigationPreferenceItemForeground:I

    invoke-static {v5, v6}, Lmiuix/internal/util/AttributeResolver;->resolveDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 74
    iget-object v4, v1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 75
    instance-of v5, v4, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v5, :cond_201

    .line 76
    move-object v7, v4

    check-cast v7, Landroid/graphics/drawable/LayerDrawable;

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    move v9, v13

    move v11, v13

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    .line 77
    :cond_201
    :goto_201
    invoke-virtual/range {p0 .. p2}, Lmiuix/preference/PreferenceGroupAdapter;->checkHighlight(Landroidx/preference/h;I)V

    .line 78
    instance-of v2, v3, Lmiuix/preference/PreferenceExtraPadding;

    if-eqz v2, :cond_20d

    .line 79
    check-cast v3, Lmiuix/preference/PreferenceExtraPadding;

    invoke-interface {v3, v1, v13}, Lmiuix/preference/PreferenceExtraPadding;->onPreferenceExtraPadding(Landroidx/preference/h;I)V

    :cond_20d
    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$b0;I)V
    .registers 3

    .line 1
    check-cast p1, Landroidx/preference/h;

    invoke-virtual {p0, p1, p2}, Lmiuix/preference/PreferenceGroupAdapter;->onBindViewHolder(Landroidx/preference/h;I)V

    return-void
.end method

.method public onDetachedFromRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onDetachedFromRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 4
    iget-object p1, p0, Lmiuix/preference/PreferenceGroupAdapter;->mObserver:Landroidx/recyclerview/widget/RecyclerView$i;

    .line 6
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->unregisterAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$i;)V

    .line 9
    const/4 p1, 0x0

    .line 10
    iput-object p1, p0, Lmiuix/preference/PreferenceGroupAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 12
    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;)V
    .registers 4

    .line 1
    invoke-super {p0, p1}, Landroidx/preference/c;->onPreferenceChange(Landroidx/preference/Preference;)V

    .line 4
    invoke-virtual {p1}, Landroidx/preference/Preference;->getDependency()Ljava/lang/String;

    .line 7
    move-result-object v0

    .line 8
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 11
    move-result v1

    .line 12
    if-nez v1, :cond_3e

    .line 14
    invoke-virtual {p1}, Landroidx/preference/Preference;->getPreferenceManager()Landroidx/preference/f;

    .line 17
    move-result-object v1

    .line 18
    iget-object v1, v1, Landroidx/preference/f;->g:Landroidx/preference/PreferenceScreen;

    .line 20
    if-nez v1, :cond_17

    .line 22
    const/4 v0, 0x0

    .line 23
    goto :goto_1b

    .line 24
    :cond_17
    invoke-virtual {v1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    .line 27
    move-result-object v0

    .line 28
    :goto_1b
    if-eqz v0, :cond_3e

    .line 30
    instance-of v1, p1, Landroidx/preference/PreferenceCategory;

    .line 32
    if-eqz v1, :cond_37

    .line 34
    instance-of v1, v0, Landroidx/preference/TwoStatePreference;

    .line 36
    if-eqz v1, :cond_2f

    .line 38
    check-cast v0, Landroidx/preference/TwoStatePreference;

    .line 40
    invoke-virtual {v0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    .line 43
    move-result v0

    .line 44
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 47
    goto :goto_3e

    .line 48
    :cond_2f
    invoke-virtual {v0}, Landroidx/preference/Preference;->isEnabled()Z

    .line 51
    move-result v0

    .line 52
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 55
    goto :goto_3e

    .line 56
    :cond_37
    invoke-virtual {p1}, Landroidx/preference/Preference;->isEnabled()Z

    .line 59
    move-result v0

    .line 60
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 63
    :cond_3e
    :goto_3e
    return-void
.end method

.method public onPreferenceVisibilityChange(Landroidx/preference/Preference;)V
    .registers 3

    .line 1
    if-eqz p1, :cond_b

    .line 3
    invoke-virtual {p1}, Landroidx/preference/Preference;->isVisible()Z

    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_b

    .line 9
    invoke-direct {p0, p1}, Lmiuix/preference/PreferenceGroupAdapter;->updateViewBackgroundMask(Landroidx/preference/Preference;)V

    .line 12
    :cond_b
    invoke-super {p0, p1}, Landroidx/preference/c;->onPreferenceVisibilityChange(Landroidx/preference/Preference;)V

    .line 15
    return-void
.end method

.method public onViewDetachedFromWindow(Landroidx/preference/h;)V
    .registers 2

    .line 2
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView$b0;)V

    .line 3
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    invoke-virtual {p0, p1}, Lmiuix/preference/PreferenceGroupAdapter;->stopHighlight(Landroid/view/View;)V

    return-void
.end method

.method public bridge synthetic onViewDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView$b0;)V
    .registers 2

    .line 1
    check-cast p1, Landroidx/preference/h;

    invoke-virtual {p0, p1}, Lmiuix/preference/PreferenceGroupAdapter;->onViewDetachedFromWindow(Landroidx/preference/h;)V

    return-void
.end method

.method public onViewRecycled(Landroidx/preference/h;)V
    .registers 2

    .line 2
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$b0;)V

    .line 3
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    invoke-virtual {p0, p1}, Lmiuix/preference/PreferenceGroupAdapter;->stopHighlight(Landroid/view/View;)V

    return-void
.end method

.method public bridge synthetic onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$b0;)V
    .registers 2

    .line 1
    check-cast p1, Landroidx/preference/h;

    invoke-virtual {p0, p1}, Lmiuix/preference/PreferenceGroupAdapter;->onViewRecycled(Landroidx/preference/h;)V

    return-void
.end method

.method public requestHighlight(Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/String;)V
    .registers 7

    .line 1
    invoke-virtual {p0}, Lmiuix/preference/PreferenceGroupAdapter;->isHighlightRequested()Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_69

    .line 7
    if-eqz p1, :cond_69

    .line 9
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_f

    .line 15
    goto :goto_69

    .line 16
    :cond_f
    invoke-virtual {p0, p2}, Landroidx/preference/c;->getPreferenceAdapterPosition(Ljava/lang/String;)I

    .line 19
    move-result p2

    .line 20
    if-gez p2, :cond_16

    .line 22
    return-void

    .line 23
    :cond_16
    const/4 v0, 0x0

    .line 24
    iget-object v1, p0, Lmiuix/preference/PreferenceGroupAdapter;->mParentTouchOnHighlightListener:Landroid/view/View$OnTouchListener;

    .line 26
    if-nez v1, :cond_22

    .line 28
    new-instance v1, Lmiuix/preference/PreferenceGroupAdapter$2;

    .line 30
    invoke-direct {v1, p0}, Lmiuix/preference/PreferenceGroupAdapter$2;-><init>(Lmiuix/preference/PreferenceGroupAdapter;)V

    .line 33
    iput-object v1, p0, Lmiuix/preference/PreferenceGroupAdapter;->mParentTouchOnHighlightListener:Landroid/view/View$OnTouchListener;

    .line 35
    :cond_22
    iget-object v1, p0, Lmiuix/preference/PreferenceGroupAdapter;->mItemTouchOnHighlightListener:Landroidx/recyclerview/widget/RecyclerView$r;

    .line 37
    if-nez v1, :cond_2d

    .line 39
    new-instance v1, Lmiuix/preference/PreferenceGroupAdapter$3;

    .line 41
    invoke-direct {v1, p0}, Lmiuix/preference/PreferenceGroupAdapter$3;-><init>(Lmiuix/preference/PreferenceGroupAdapter;)V

    .line 44
    iput-object v1, p0, Lmiuix/preference/PreferenceGroupAdapter;->mItemTouchOnHighlightListener:Landroidx/recyclerview/widget/RecyclerView$r;

    .line 46
    :cond_2d
    iget-object v1, p0, Lmiuix/preference/PreferenceGroupAdapter;->mParentTouchOnHighlightListener:Landroid/view/View$OnTouchListener;

    .line 48
    invoke-virtual {p1, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 51
    iget-object v1, p0, Lmiuix/preference/PreferenceGroupAdapter;->mItemTouchOnHighlightListener:Landroidx/recyclerview/widget/RecyclerView$r;

    .line 53
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnItemTouchListener(Landroidx/recyclerview/widget/RecyclerView$r;)V

    .line 56
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 59
    move-result-object v1

    .line 60
    invoke-virtual {v1, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    .line 63
    move-result-object v1

    .line 64
    const/4 v2, 0x1

    .line 65
    if-eqz v1, :cond_56

    .line 67
    new-instance v3, Landroid/graphics/Rect;

    .line 69
    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 72
    invoke-virtual {v1, v3}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 75
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    .line 78
    move-result v3

    .line 79
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 82
    move-result v1

    .line 83
    if-ge v3, v1, :cond_55

    .line 85
    move v0, v2

    .line 86
    :cond_55
    move v2, v0

    .line 87
    :cond_56
    if-nez v2, :cond_5e

    .line 89
    iput p2, p0, Lmiuix/preference/PreferenceGroupAdapter;->mHighlightPosition:I

    .line 91
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 94
    goto :goto_69

    .line 95
    :cond_5e
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    .line 98
    new-instance v0, Lmiuix/preference/PreferenceGroupAdapter$4;

    .line 100
    invoke-direct {v0, p0, p2}, Lmiuix/preference/PreferenceGroupAdapter$4;-><init>(Lmiuix/preference/PreferenceGroupAdapter;I)V

    .line 103
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$s;)V

    .line 106
    :cond_69
    :goto_69
    return-void
.end method

.method public setClipPaint(Landroid/graphics/Paint;IIIII)V
    .registers 7

    .line 1
    iput-object p1, p0, Lmiuix/preference/PreferenceGroupAdapter;->mClipPaint:Landroid/graphics/Paint;

    .line 3
    iput p2, p0, Lmiuix/preference/PreferenceGroupAdapter;->mMaskPaddingTop:I

    .line 5
    iput p3, p0, Lmiuix/preference/PreferenceGroupAdapter;->mMaskPaddingBottom:I

    .line 7
    iput p4, p0, Lmiuix/preference/PreferenceGroupAdapter;->mMaskPaddingStart:I

    .line 9
    iput p5, p0, Lmiuix/preference/PreferenceGroupAdapter;->mMaskPaddingEnd:I

    .line 11
    iput p6, p0, Lmiuix/preference/PreferenceGroupAdapter;->mMaskRadius:I

    .line 13
    return-void
.end method

.method public setExtraPaddingHorizontal(I)Z
    .registers 3

    .line 1
    iget v0, p0, Lmiuix/preference/PreferenceGroupAdapter;->mExtraPaddingHorizontal:I

    .line 3
    if-eq v0, p1, :cond_8

    .line 5
    iput p1, p0, Lmiuix/preference/PreferenceGroupAdapter;->mExtraPaddingHorizontal:I

    .line 7
    const/4 p1, 0x1

    .line 8
    return p1

    .line 9
    :cond_8
    const/4 p1, 0x0

    .line 10
    return p1
.end method

.method public stopHighlight()V
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/preference/PreferenceGroupAdapter;->mHighlightItemView:Landroid/view/View;

    if-eqz v0, :cond_14

    .line 2
    invoke-virtual {p0, v0}, Lmiuix/preference/PreferenceGroupAdapter;->stopHighlight(Landroid/view/View;)V

    .line 3
    iget-object v0, p0, Lmiuix/preference/PreferenceGroupAdapter;->mFolmeBlink:Lmiuix/animation/controller/FolmeBlink;

    if-eqz v0, :cond_e

    .line 4
    invoke-virtual {v0, p0}, Lmiuix/animation/controller/FolmeBlink;->detach(Lmiuix/animation/internal/BlinkStateObserver;)V

    :cond_e
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lmiuix/preference/PreferenceGroupAdapter;->mFolmeBlink:Lmiuix/animation/controller/FolmeBlink;

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lmiuix/preference/PreferenceGroupAdapter;->mNeedCancelHighlightRequest:Z

    :cond_14
    return-void
.end method

.method public stopHighlight(Landroid/view/View;)V
    .registers 5

    .line 7
    invoke-virtual {p0}, Lmiuix/preference/PreferenceGroupAdapter;->isHighlightRequested()Z

    move-result v0

    if-eqz v0, :cond_49

    if-eqz p1, :cond_49

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget v1, Lmiuix/preference/R$id;->preference_highlighted:I

    invoke-virtual {p1, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    goto :goto_49

    :cond_17
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/view/View;

    const/4 v2, 0x0

    aput-object p1, v0, v2

    .line 8
    invoke-static {v0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v0

    invoke-interface {v0}, Lmiuix/animation/IFolme;->blink()Lmiuix/animation/IBlinkStyle;

    move-result-object v0

    invoke-interface {v0}, Lmiuix/animation/IBlinkStyle;->stopBlink()V

    .line 9
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 10
    iget-object v0, p0, Lmiuix/preference/PreferenceGroupAdapter;->mHighlightItemView:Landroid/view/View;

    const/4 v1, 0x0

    if-ne v0, p1, :cond_34

    .line 11
    iput-object v1, p0, Lmiuix/preference/PreferenceGroupAdapter;->mHighlightItemView:Landroid/view/View;

    :cond_34
    const/4 p1, -0x1

    .line 12
    iput p1, p0, Lmiuix/preference/PreferenceGroupAdapter;->mHighlightPosition:I

    .line 13
    iget-object p1, p0, Lmiuix/preference/PreferenceGroupAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_49

    .line 14
    iget-object v0, p0, Lmiuix/preference/PreferenceGroupAdapter;->mItemTouchOnHighlightListener:Landroidx/recyclerview/widget/RecyclerView$r;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->removeOnItemTouchListener(Landroidx/recyclerview/widget/RecyclerView$r;)V

    .line 15
    iget-object p1, p0, Lmiuix/preference/PreferenceGroupAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 16
    iput-object v1, p0, Lmiuix/preference/PreferenceGroupAdapter;->mItemTouchOnHighlightListener:Landroidx/recyclerview/widget/RecyclerView$r;

    .line 17
    iput-object v1, p0, Lmiuix/preference/PreferenceGroupAdapter;->mParentTouchOnHighlightListener:Landroid/view/View$OnTouchListener;

    :cond_49
    :goto_49
    return-void
.end method

.method public updateBlinkState(Z)V
    .registers 3

    .line 1
    if-eqz p1, :cond_1c

    .line 3
    iget-object p1, p0, Lmiuix/preference/PreferenceGroupAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 5
    if-eqz p1, :cond_1c

    .line 7
    iget-object v0, p0, Lmiuix/preference/PreferenceGroupAdapter;->mItemTouchOnHighlightListener:Landroidx/recyclerview/widget/RecyclerView$r;

    .line 9
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->removeOnItemTouchListener(Landroidx/recyclerview/widget/RecyclerView$r;)V

    .line 12
    iget-object p1, p0, Lmiuix/preference/PreferenceGroupAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 14
    const/4 v0, 0x0

    .line 15
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 18
    iput-object v0, p0, Lmiuix/preference/PreferenceGroupAdapter;->mItemTouchOnHighlightListener:Landroidx/recyclerview/widget/RecyclerView$r;

    .line 20
    iput-object v0, p0, Lmiuix/preference/PreferenceGroupAdapter;->mParentTouchOnHighlightListener:Landroid/view/View$OnTouchListener;

    .line 22
    iget-object p1, p0, Lmiuix/preference/PreferenceGroupAdapter;->mFolmeBlink:Lmiuix/animation/controller/FolmeBlink;

    .line 24
    if-eqz p1, :cond_1c

    .line 26
    invoke-virtual {p1, p0}, Lmiuix/animation/controller/FolmeBlink;->detach(Lmiuix/animation/internal/BlinkStateObserver;)V

    .line 29
    :cond_1c
    return-void
.end method
