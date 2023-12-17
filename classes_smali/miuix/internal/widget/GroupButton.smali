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

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v1, v0, [I

    .line 4
    sget v2, Lmiuix/appcompat/R$attr;->state_first_v:I

    .line 6
    const/4 v3, 0x0

    .line 7
    aput v2, v1, v3

    .line 9
    sput-object v1, Lmiuix/internal/widget/GroupButton;->STATE_FIRST_V:[I

    .line 11
    new-array v1, v0, [I

    .line 13
    sget v2, Lmiuix/appcompat/R$attr;->state_middle_v:I

    .line 15
    aput v2, v1, v3

    .line 17
    sput-object v1, Lmiuix/internal/widget/GroupButton;->STATE_MIDDLE_V:[I

    .line 19
    new-array v1, v0, [I

    .line 21
    sget v2, Lmiuix/appcompat/R$attr;->state_last_v:I

    .line 23
    aput v2, v1, v3

    .line 25
    sput-object v1, Lmiuix/internal/widget/GroupButton;->STATE_LAST_V:[I

    .line 27
    new-array v1, v0, [I

    .line 29
    sget v2, Lmiuix/appcompat/R$attr;->state_first_h:I

    .line 31
    aput v2, v1, v3

    .line 33
    sput-object v1, Lmiuix/internal/widget/GroupButton;->STATE_FIRST_H:[I

    .line 35
    new-array v1, v0, [I

    .line 37
    sget v2, Lmiuix/appcompat/R$attr;->state_middle_h:I

    .line 39
    aput v2, v1, v3

    .line 41
    sput-object v1, Lmiuix/internal/widget/GroupButton;->STATE_MIDDLE_H:[I

    .line 43
    new-array v1, v0, [I

    .line 45
    sget v2, Lmiuix/appcompat/R$attr;->state_last_h:I

    .line 47
    aput v2, v1, v3

    .line 49
    sput-object v1, Lmiuix/internal/widget/GroupButton;->STATE_LAST_H:[I

    .line 51
    new-array v0, v0, [I

    .line 53
    sget v1, Lmiuix/appcompat/R$attr;->state_single_h:I

    .line 55
    aput v1, v0, v3

    .line 57
    sput-object v0, Lmiuix/internal/widget/GroupButton;->STATE_SINGLE_H:[I

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatButton;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lmiuix/internal/widget/GroupButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    invoke-direct {p0, p1, p2, p3}, Lmiuix/internal/widget/GroupButton;->initAttr(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private initAttr(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6

    .line 1
    iput-object p2, p0, Lmiuix/internal/widget/GroupButton;->mAttrsCache:Landroid/util/AttributeSet;

    .line 3
    sget-object v0, Lmiuix/appcompat/R$styleable;->GroupButton:[I

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 9
    move-result-object p1

    .line 10
    :try_start_9
    sget p2, Lmiuix/appcompat/R$styleable;->GroupButton_primaryButton:I

    .line 12
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 15
    move-result p3

    .line 16
    if-eqz p3, :cond_17

    .line 18
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 21
    move-result p2

    .line 22
    iput-boolean p2, p0, Lmiuix/internal/widget/GroupButton;->mPrimary:Z
    :try_end_17
    .catchall {:try_start_9 .. :try_end_17} :catchall_1b

    .line 24
    :cond_17
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 27
    return-void

    .line 28
    :catchall_1b
    move-exception p2

    .line 29
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 32
    throw p2
.end method


# virtual methods
.method public isPrimary()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lmiuix/internal/widget/GroupButton;->mPrimary:Z

    .line 3
    return v0
.end method

.method public onCreateDrawableState(I)[I
    .registers 12

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Landroid/view/ViewGroup;

    .line 7
    if-nez v0, :cond_d

    .line 9
    invoke-super {p0, p1}, Landroid/view/View;->onCreateDrawableState(I)[I

    .line 12
    move-result-object p1

    .line 13
    return-object p1

    .line 14
    :cond_d
    instance-of v1, v0, Landroid/widget/LinearLayout;

    .line 16
    if-eqz v1, :cond_96

    .line 18
    move-object v1, v0

    .line 19
    check-cast v1, Landroid/widget/LinearLayout;

    .line 21
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getOrientation()I

    .line 24
    move-result v1

    .line 25
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    .line 28
    move-result v2

    .line 29
    const/4 v3, 0x0

    .line 30
    const/4 v4, 0x1

    .line 31
    move v5, v3

    .line 32
    move v6, v5

    .line 33
    move v7, v4

    .line 34
    move v8, v7

    .line 35
    :goto_22
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 38
    move-result v9

    .line 39
    if-ge v5, v9, :cond_3d

    .line 41
    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 44
    move-result-object v9

    .line 45
    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    .line 48
    move-result v9

    .line 49
    if-nez v9, :cond_3a

    .line 51
    add-int/lit8 v6, v6, 0x1

    .line 53
    if-ge v5, v2, :cond_37

    .line 55
    move v7, v3

    .line 56
    :cond_37
    if-le v5, v2, :cond_3a

    .line 58
    move v8, v3

    .line 59
    :cond_3a
    add-int/lit8 v5, v5, 0x1

    .line 61
    goto :goto_22

    .line 62
    :cond_3d
    if-ne v6, v4, :cond_40

    .line 64
    move v3, v4

    .line 65
    :cond_40
    if-ne v1, v4, :cond_65

    .line 67
    add-int/lit8 p1, p1, 0x2

    .line 69
    invoke-super {p0, p1}, Landroid/view/View;->onCreateDrawableState(I)[I

    .line 72
    move-result-object p1

    .line 73
    sget-object v0, Lmiuix/internal/widget/GroupButton;->STATE_SINGLE_H:[I

    .line 75
    invoke-static {p1, v0}, Landroid/view/View;->mergeDrawableStates([I[I)[I

    .line 78
    if-nez v3, :cond_64

    .line 80
    if-eqz v7, :cond_57

    .line 82
    sget-object v0, Lmiuix/internal/widget/GroupButton;->STATE_FIRST_V:[I

    .line 84
    invoke-static {p1, v0}, Landroid/view/View;->mergeDrawableStates([I[I)[I

    .line 87
    goto :goto_64

    .line 88
    :cond_57
    if-eqz v8, :cond_5f

    .line 90
    sget-object v0, Lmiuix/internal/widget/GroupButton;->STATE_LAST_V:[I

    .line 92
    invoke-static {p1, v0}, Landroid/view/View;->mergeDrawableStates([I[I)[I

    .line 95
    goto :goto_64

    .line 96
    :cond_5f
    sget-object v0, Lmiuix/internal/widget/GroupButton;->STATE_MIDDLE_V:[I

    .line 98
    invoke-static {p1, v0}, Landroid/view/View;->mergeDrawableStates([I[I)[I

    .line 101
    :cond_64
    :goto_64
    return-object p1

    .line 102
    :cond_65
    invoke-static {p0}, Landroidx/appcompat/widget/h1;->a(Landroid/view/View;)Z

    .line 105
    move-result v0

    .line 106
    add-int/2addr p1, v4

    .line 107
    invoke-super {p0, p1}, Landroid/view/View;->onCreateDrawableState(I)[I

    .line 110
    move-result-object p1

    .line 111
    if-eqz v3, :cond_76

    .line 113
    sget-object v0, Lmiuix/internal/widget/GroupButton;->STATE_SINGLE_H:[I

    .line 115
    invoke-static {p1, v0}, Landroid/view/View;->mergeDrawableStates([I[I)[I

    .line 118
    goto :goto_95

    .line 119
    :cond_76
    if-eqz v7, :cond_83

    .line 121
    if-eqz v0, :cond_7d

    .line 123
    sget-object v0, Lmiuix/internal/widget/GroupButton;->STATE_LAST_H:[I

    .line 125
    goto :goto_7f

    .line 126
    :cond_7d
    sget-object v0, Lmiuix/internal/widget/GroupButton;->STATE_FIRST_H:[I

    .line 128
    :goto_7f
    invoke-static {p1, v0}, Landroid/view/View;->mergeDrawableStates([I[I)[I

    .line 131
    goto :goto_95

    .line 132
    :cond_83
    if-eqz v8, :cond_90

    .line 134
    if-eqz v0, :cond_8a

    .line 136
    sget-object v0, Lmiuix/internal/widget/GroupButton;->STATE_FIRST_H:[I

    .line 138
    goto :goto_8c

    .line 139
    :cond_8a
    sget-object v0, Lmiuix/internal/widget/GroupButton;->STATE_LAST_H:[I

    .line 141
    :goto_8c
    invoke-static {p1, v0}, Landroid/view/View;->mergeDrawableStates([I[I)[I

    .line 144
    goto :goto_95

    .line 145
    :cond_90
    sget-object v0, Lmiuix/internal/widget/GroupButton;->STATE_MIDDLE_H:[I

    .line 147
    invoke-static {p1, v0}, Landroid/view/View;->mergeDrawableStates([I[I)[I

    .line 150
    :goto_95
    return-object p1

    .line 151
    :cond_96
    invoke-super {p0, p1}, Landroid/view/View;->onCreateDrawableState(I)[I

    .line 154
    move-result-object p1

    .line 155
    return-object p1
.end method
