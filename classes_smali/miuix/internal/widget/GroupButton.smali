.class public Lmiuix/internal/widget/GroupButton;
.super Landroidx/appcompat/widget/AppCompatButton;
.source "GroupButton.java"


# static fields
.field private static final STATE_FIRST_H:[I

.field private static final STATE_FIRST_V:[I

.field private static final STATE_LAST_H:[I

.field private static final STATE_LAST_V:[I

.field private static final STATE_MIDDLE_H:[I

.field private static final STATE_MIDDLE_V:[I

.field private static final STATE_SINGLE_H:[I


# instance fields
.field private mAttrsCache:Landroid/util/AttributeSet;

.field private mPrimary:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 4

    const/4 v0, 0x1

    new-array v1, v0, [I

    sget v2, Lmiuix/appcompat/R$attr;->state_first_v:I

    const/4 v3, 0x0

    aput v2, v1, v3

    sput-object v1, Lmiuix/internal/widget/GroupButton;->STATE_FIRST_V:[I

    new-array v1, v0, [I

    sget v2, Lmiuix/appcompat/R$attr;->state_middle_v:I

    aput v2, v1, v3

    sput-object v1, Lmiuix/internal/widget/GroupButton;->STATE_MIDDLE_V:[I

    new-array v1, v0, [I

    sget v2, Lmiuix/appcompat/R$attr;->state_last_v:I

    aput v2, v1, v3

    sput-object v1, Lmiuix/internal/widget/GroupButton;->STATE_LAST_V:[I

    new-array v1, v0, [I

    sget v2, Lmiuix/appcompat/R$attr;->state_first_h:I

    aput v2, v1, v3

    sput-object v1, Lmiuix/internal/widget/GroupButton;->STATE_FIRST_H:[I

    new-array v1, v0, [I

    sget v2, Lmiuix/appcompat/R$attr;->state_middle_h:I

    aput v2, v1, v3

    sput-object v1, Lmiuix/internal/widget/GroupButton;->STATE_MIDDLE_H:[I

    new-array v1, v0, [I

    sget v2, Lmiuix/appcompat/R$attr;->state_last_h:I

    aput v2, v1, v3

    sput-object v1, Lmiuix/internal/widget/GroupButton;->STATE_LAST_H:[I

    new-array v0, v0, [I

    sget v1, Lmiuix/appcompat/R$attr;->state_single_h:I

    aput v1, v0, v3

    sput-object v0, Lmiuix/internal/widget/GroupButton;->STATE_SINGLE_H:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatButton;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lmiuix/internal/widget/GroupButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0, p1, p2, p3}, Lmiuix/internal/widget/GroupButton;->initAttr(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private initAttr(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6

    iput-object p2, p0, Lmiuix/internal/widget/GroupButton;->mAttrsCache:Landroid/util/AttributeSet;

    sget-object v0, Lmiuix/appcompat/R$styleable;->GroupButton:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    :try_start_9
    sget p2, Lmiuix/appcompat/R$styleable;->GroupButton_primaryButton:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p3

    if-eqz p3, :cond_17

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lmiuix/internal/widget/GroupButton;->mPrimary:Z
    :try_end_17
    .catchall {:try_start_9 .. :try_end_17} :catchall_1b

    :cond_17
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :catchall_1b
    move-exception p2

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    throw p2
.end method


# virtual methods
.method public isPrimary()Z
    .registers 2

    iget-boolean v0, p0, Lmiuix/internal/widget/GroupButton;->mPrimary:Z

    return v0
.end method

.method public onCreateDrawableState(I)[I
    .registers 12

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-nez v0, :cond_d

    invoke-super {p0, p1}, Landroid/view/View;->onCreateDrawableState(I)[I

    move-result-object p1

    return-object p1

    :cond_d
    instance-of v1, v0, Landroid/widget/LinearLayout;

    if-eqz v1, :cond_96

    move-object v1, v0

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getOrientation()I

    move-result v1

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    move v5, v3

    move v6, v5

    move v7, v4

    move v8, v7

    :goto_22
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v9

    if-ge v5, v9, :cond_3d

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v9

    if-nez v9, :cond_3a

    add-int/lit8 v6, v6, 0x1

    if-ge v5, v2, :cond_37

    move v7, v3

    :cond_37
    if-le v5, v2, :cond_3a

    move v8, v3

    :cond_3a
    add-int/lit8 v5, v5, 0x1

    goto :goto_22

    :cond_3d
    if-ne v6, v4, :cond_40

    move v3, v4

    :cond_40
    if-ne v1, v4, :cond_65

    add-int/lit8 p1, p1, 0x2

    invoke-super {p0, p1}, Landroid/view/View;->onCreateDrawableState(I)[I

    move-result-object p1

    sget-object v0, Lmiuix/internal/widget/GroupButton;->STATE_SINGLE_H:[I

    invoke-static {p1, v0}, Landroid/view/View;->mergeDrawableStates([I[I)[I

    if-nez v3, :cond_64

    if-eqz v7, :cond_57

    sget-object v0, Lmiuix/internal/widget/GroupButton;->STATE_FIRST_V:[I

    invoke-static {p1, v0}, Landroid/view/View;->mergeDrawableStates([I[I)[I

    goto :goto_64

    :cond_57
    if-eqz v8, :cond_5f

    sget-object v0, Lmiuix/internal/widget/GroupButton;->STATE_LAST_V:[I

    invoke-static {p1, v0}, Landroid/view/View;->mergeDrawableStates([I[I)[I

    goto :goto_64

    :cond_5f
    sget-object v0, Lmiuix/internal/widget/GroupButton;->STATE_MIDDLE_V:[I

    invoke-static {p1, v0}, Landroid/view/View;->mergeDrawableStates([I[I)[I

    :cond_64
    :goto_64
    return-object p1

    :cond_65
    invoke-static {p0}, Landroidx/appcompat/widget/h1;->a(Landroid/view/View;)Z

    move-result v0

    add-int/2addr p1, v4

    invoke-super {p0, p1}, Landroid/view/View;->onCreateDrawableState(I)[I

    move-result-object p1

    if-eqz v3, :cond_76

    sget-object v0, Lmiuix/internal/widget/GroupButton;->STATE_SINGLE_H:[I

    invoke-static {p1, v0}, Landroid/view/View;->mergeDrawableStates([I[I)[I

    goto :goto_95

    :cond_76
    if-eqz v7, :cond_83

    if-eqz v0, :cond_7d

    sget-object v0, Lmiuix/internal/widget/GroupButton;->STATE_LAST_H:[I

    goto :goto_7f

    :cond_7d
    sget-object v0, Lmiuix/internal/widget/GroupButton;->STATE_FIRST_H:[I

    :goto_7f
    invoke-static {p1, v0}, Landroid/view/View;->mergeDrawableStates([I[I)[I

    goto :goto_95

    :cond_83
    if-eqz v8, :cond_90

    if-eqz v0, :cond_8a

    sget-object v0, Lmiuix/internal/widget/GroupButton;->STATE_FIRST_H:[I

    goto :goto_8c

    :cond_8a
    sget-object v0, Lmiuix/internal/widget/GroupButton;->STATE_LAST_H:[I

    :goto_8c
    invoke-static {p1, v0}, Landroid/view/View;->mergeDrawableStates([I[I)[I

    goto :goto_95

    :cond_90
    sget-object v0, Lmiuix/internal/widget/GroupButton;->STATE_MIDDLE_H:[I

    invoke-static {p1, v0}, Landroid/view/View;->mergeDrawableStates([I[I)[I

    :goto_95
    return-object p1

    :cond_96
    invoke-super {p0, p1}, Landroid/view/View;->onCreateDrawableState(I)[I

    move-result-object p1

    return-object p1
.end method
