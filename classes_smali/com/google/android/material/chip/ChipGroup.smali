.class public Lcom/google/android/material/chip/ChipGroup;
.super Lcom/google/android/material/internal/FlowLayout;
.source "ChipGroup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/chip/ChipGroup$PassThroughHierarchyChangeListener;,
        Lcom/google/android/material/chip/ChipGroup$CheckedStateTracker;,
        Lcom/google/android/material/chip/ChipGroup$LayoutParams;,
        Lcom/google/android/material/chip/ChipGroup$OnCheckedChangeListener;
    }
.end annotation


# static fields
.field private static final DEF_STYLE_RES:I


# instance fields
.field private checkedId:I

.field private final checkedStateTracker:Lcom/google/android/material/chip/ChipGroup$CheckedStateTracker;

.field private chipSpacingHorizontal:I

.field private chipSpacingVertical:I

.field private onCheckedChangeListener:Lcom/google/android/material/chip/ChipGroup$OnCheckedChangeListener;

.field private passThroughListener:Lcom/google/android/material/chip/ChipGroup$PassThroughHierarchyChangeListener;

.field private protectFromCheckedChange:Z

.field private selectionRequired:Z

.field private singleSelection:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    sget v0, Lcom/google/android/material/R$style;->Widget_MaterialComponents_ChipGroup:I

    .line 3
    sput v0, Lcom/google/android/material/chip/ChipGroup;->DEF_STYLE_RES:I

    .line 5
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/chip/ChipGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 2
    sget v0, Lcom/google/android/material/R$attr;->chipGroupStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/chip/ChipGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 11

    .line 3
    sget v4, Lcom/google/android/material/chip/ChipGroup;->DEF_STYLE_RES:I

    invoke-static {p1, p2, p3, v4}, Lcom/google/android/material/theme/overlay/MaterialThemeOverlay;->wrap(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/material/internal/FlowLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    new-instance p1, Lcom/google/android/material/chip/ChipGroup$CheckedStateTracker;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/google/android/material/chip/ChipGroup$CheckedStateTracker;-><init>(Lcom/google/android/material/chip/ChipGroup;Lcom/google/android/material/chip/ChipGroup$1;)V

    iput-object p1, p0, Lcom/google/android/material/chip/ChipGroup;->checkedStateTracker:Lcom/google/android/material/chip/ChipGroup$CheckedStateTracker;

    .line 5
    new-instance p1, Lcom/google/android/material/chip/ChipGroup$PassThroughHierarchyChangeListener;

    invoke-direct {p1, p0, v0}, Lcom/google/android/material/chip/ChipGroup$PassThroughHierarchyChangeListener;-><init>(Lcom/google/android/material/chip/ChipGroup;Lcom/google/android/material/chip/ChipGroup$1;)V

    iput-object p1, p0, Lcom/google/android/material/chip/ChipGroup;->passThroughListener:Lcom/google/android/material/chip/ChipGroup$PassThroughHierarchyChangeListener;

    const/4 p1, -0x1

    .line 6
    iput p1, p0, Lcom/google/android/material/chip/ChipGroup;->checkedId:I

    const/4 v6, 0x0

    .line 7
    iput-boolean v6, p0, Lcom/google/android/material/chip/ChipGroup;->protectFromCheckedChange:Z

    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 9
    sget-object v2, Lcom/google/android/material/R$styleable;->ChipGroup:[I

    new-array v5, v6, [I

    move-object v1, p2

    move v3, p3

    .line 10
    invoke-static/range {v0 .. v5}, Lcom/google/android/material/internal/ThemeEnforcement;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 11
    sget p3, Lcom/google/android/material/R$styleable;->ChipGroup_chipSpacing:I

    invoke-virtual {p2, p3, v6}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p3

    .line 12
    sget v0, Lcom/google/android/material/R$styleable;->ChipGroup_chipSpacingHorizontal:I

    .line 13
    invoke-virtual {p2, v0, p3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    .line 14
    invoke-virtual {p0, v0}, Lcom/google/android/material/chip/ChipGroup;->setChipSpacingHorizontal(I)V

    .line 15
    sget v0, Lcom/google/android/material/R$styleable;->ChipGroup_chipSpacingVertical:I

    .line 16
    invoke-virtual {p2, v0, p3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p3

    .line 17
    invoke-virtual {p0, p3}, Lcom/google/android/material/chip/ChipGroup;->setChipSpacingVertical(I)V

    .line 18
    sget p3, Lcom/google/android/material/R$styleable;->ChipGroup_singleLine:I

    invoke-virtual {p2, p3, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    invoke-virtual {p0, p3}, Lcom/google/android/material/chip/ChipGroup;->setSingleLine(Z)V

    .line 19
    sget p3, Lcom/google/android/material/R$styleable;->ChipGroup_singleSelection:I

    invoke-virtual {p2, p3, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    invoke-virtual {p0, p3}, Lcom/google/android/material/chip/ChipGroup;->setSingleSelection(Z)V

    .line 20
    sget p3, Lcom/google/android/material/R$styleable;->ChipGroup_selectionRequired:I

    invoke-virtual {p2, p3, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    invoke-virtual {p0, p3}, Lcom/google/android/material/chip/ChipGroup;->setSelectionRequired(Z)V

    .line 21
    sget p3, Lcom/google/android/material/R$styleable;->ChipGroup_checkedChip:I

    invoke-virtual {p2, p3, p1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    if-eq p3, p1, :cond_69

    .line 22
    iput p3, p0, Lcom/google/android/material/chip/ChipGroup;->checkedId:I

    .line 23
    :cond_69
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 24
    iget-object p1, p0, Lcom/google/android/material/chip/ChipGroup;->passThroughListener:Lcom/google/android/material/chip/ChipGroup$PassThroughHierarchyChangeListener;

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    const/4 p1, 0x1

    .line 25
    sget-object p2, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 26
    invoke-static {p0, p1}, Lm0/g0$d;->s(Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic access$1000(Lcom/google/android/material/chip/ChipGroup;)Lcom/google/android/material/chip/ChipGroup$CheckedStateTracker;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/google/android/material/chip/ChipGroup;->checkedStateTracker:Lcom/google/android/material/chip/ChipGroup$CheckedStateTracker;

    .line 3
    return-object p0
.end method

.method public static synthetic access$300(Lcom/google/android/material/chip/ChipGroup;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lcom/google/android/material/chip/ChipGroup;->protectFromCheckedChange:Z

    .line 3
    return p0
.end method

.method public static synthetic access$400(Lcom/google/android/material/chip/ChipGroup;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lcom/google/android/material/chip/ChipGroup;->selectionRequired:Z

    .line 3
    return p0
.end method

.method public static synthetic access$500(Lcom/google/android/material/chip/ChipGroup;IZ)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/chip/ChipGroup;->setCheckedStateForView(IZ)V

    .line 4
    return-void
.end method

.method public static synthetic access$600(Lcom/google/android/material/chip/ChipGroup;IZ)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/chip/ChipGroup;->setCheckedId(IZ)V

    .line 4
    return-void
.end method

.method public static synthetic access$700(Lcom/google/android/material/chip/ChipGroup;)I
    .registers 1

    .line 1
    iget p0, p0, Lcom/google/android/material/chip/ChipGroup;->checkedId:I

    .line 3
    return p0
.end method

.method public static synthetic access$800(Lcom/google/android/material/chip/ChipGroup;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lcom/google/android/material/chip/ChipGroup;->singleSelection:Z

    .line 3
    return p0
.end method

.method public static synthetic access$900(Lcom/google/android/material/chip/ChipGroup;I)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/material/chip/ChipGroup;->setCheckedId(I)V

    .line 4
    return-void
.end method

.method private getChipCount()I
    .registers 4

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 6
    move-result v2

    .line 7
    if-ge v0, v2, :cond_15

    .line 9
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 12
    move-result-object v2

    .line 13
    instance-of v2, v2, Lcom/google/android/material/chip/Chip;

    .line 15
    if-eqz v2, :cond_12

    .line 17
    add-int/lit8 v1, v1, 0x1

    .line 19
    :cond_12
    add-int/lit8 v0, v0, 0x1

    .line 21
    goto :goto_2

    .line 22
    :cond_15
    return v1
.end method

.method private setCheckedId(I)V
    .registers 3

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/chip/ChipGroup;->setCheckedId(IZ)V

    return-void
.end method

.method private setCheckedId(IZ)V
    .registers 5

    .line 2
    iput p1, p0, Lcom/google/android/material/chip/ChipGroup;->checkedId:I

    .line 3
    iget-object v0, p0, Lcom/google/android/material/chip/ChipGroup;->onCheckedChangeListener:Lcom/google/android/material/chip/ChipGroup$OnCheckedChangeListener;

    if-eqz v0, :cond_f

    iget-boolean v1, p0, Lcom/google/android/material/chip/ChipGroup;->singleSelection:Z

    if-eqz v1, :cond_f

    if-eqz p2, :cond_f

    .line 4
    invoke-interface {v0, p0, p1}, Lcom/google/android/material/chip/ChipGroup$OnCheckedChangeListener;->onCheckedChanged(Lcom/google/android/material/chip/ChipGroup;I)V

    :cond_f
    return-void
.end method

.method private setCheckedStateForView(IZ)V
    .registers 4

    .line 1
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 4
    move-result-object p1

    .line 5
    instance-of v0, p1, Lcom/google/android/material/chip/Chip;

    .line 7
    if-eqz v0, :cond_13

    .line 9
    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Lcom/google/android/material/chip/ChipGroup;->protectFromCheckedChange:Z

    .line 12
    check-cast p1, Lcom/google/android/material/chip/Chip;

    .line 14
    invoke-virtual {p1, p2}, Lcom/google/android/material/chip/Chip;->setChecked(Z)V

    .line 17
    const/4 p1, 0x0

    .line 18
    iput-boolean p1, p0, Lcom/google/android/material/chip/ChipGroup;->protectFromCheckedChange:Z

    .line 20
    :cond_13
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .registers 7

    .line 1
    instance-of v0, p1, Lcom/google/android/material/chip/Chip;

    .line 3
    if-eqz v0, :cond_21

    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Lcom/google/android/material/chip/Chip;

    .line 8
    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_21

    .line 14
    iget v1, p0, Lcom/google/android/material/chip/ChipGroup;->checkedId:I

    .line 16
    const/4 v2, -0x1

    .line 17
    if-eq v1, v2, :cond_1a

    .line 19
    iget-boolean v2, p0, Lcom/google/android/material/chip/ChipGroup;->singleSelection:Z

    .line 21
    if-eqz v2, :cond_1a

    .line 23
    const/4 v2, 0x0

    .line 24
    invoke-direct {p0, v1, v2}, Lcom/google/android/material/chip/ChipGroup;->setCheckedStateForView(IZ)V

    .line 27
    :cond_1a
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    .line 30
    move-result v0

    .line 31
    invoke-direct {p0, v0}, Lcom/google/android/material/chip/ChipGroup;->setCheckedId(I)V

    .line 34
    :cond_21
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 37
    return-void
.end method

.method public check(I)V
    .registers 5

    .line 1
    iget v0, p0, Lcom/google/android/material/chip/ChipGroup;->checkedId:I

    .line 3
    if-ne p1, v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    const/4 v1, -0x1

    .line 7
    if-eq v0, v1, :cond_10

    .line 9
    iget-boolean v2, p0, Lcom/google/android/material/chip/ChipGroup;->singleSelection:Z

    .line 11
    if-eqz v2, :cond_10

    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-direct {p0, v0, v2}, Lcom/google/android/material/chip/ChipGroup;->setCheckedStateForView(IZ)V

    .line 17
    :cond_10
    if-eq p1, v1, :cond_16

    .line 19
    const/4 v0, 0x1

    .line 20
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/chip/ChipGroup;->setCheckedStateForView(IZ)V

    .line 23
    :cond_16
    invoke-direct {p0, p1}, Lcom/google/android/material/chip/ChipGroup;->setCheckedId(I)V

    .line 26
    return-void
.end method

.method public checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .registers 3

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_c

    .line 7
    instance-of p1, p1, Lcom/google/android/material/chip/ChipGroup$LayoutParams;

    .line 9
    if-eqz p1, :cond_c

    .line 11
    const/4 p1, 0x1

    .line 12
    goto :goto_d

    .line 13
    :cond_c
    const/4 p1, 0x0

    .line 14
    :goto_d
    return p1
.end method

.method public clearCheck()V
    .registers 5

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/google/android/material/chip/ChipGroup;->protectFromCheckedChange:Z

    .line 4
    const/4 v0, 0x0

    .line 5
    move v1, v0

    .line 6
    :goto_5
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 9
    move-result v2

    .line 10
    if-ge v1, v2, :cond_1b

    .line 12
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 15
    move-result-object v2

    .line 16
    instance-of v3, v2, Lcom/google/android/material/chip/Chip;

    .line 18
    if-eqz v3, :cond_18

    .line 20
    check-cast v2, Lcom/google/android/material/chip/Chip;

    .line 22
    invoke-virtual {v2, v0}, Lcom/google/android/material/chip/Chip;->setChecked(Z)V

    .line 25
    :cond_18
    add-int/lit8 v1, v1, 0x1

    .line 27
    goto :goto_5

    .line 28
    :cond_1b
    iput-boolean v0, p0, Lcom/google/android/material/chip/ChipGroup;->protectFromCheckedChange:Z

    .line 30
    const/4 v0, -0x1

    .line 31
    invoke-direct {p0, v0}, Lcom/google/android/material/chip/ChipGroup;->setCheckedId(I)V

    .line 34
    return-void
.end method

.method public generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 3

    .line 1
    new-instance v0, Lcom/google/android/material/chip/ChipGroup$LayoutParams;

    .line 3
    const/4 v1, -0x2

    .line 4
    invoke-direct {v0, v1, v1}, Lcom/google/android/material/chip/ChipGroup$LayoutParams;-><init>(II)V

    .line 7
    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 4

    .line 1
    new-instance v0, Lcom/google/android/material/chip/ChipGroup$LayoutParams;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/google/android/material/chip/ChipGroup$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .registers 3

    .line 2
    new-instance v0, Lcom/google/android/material/chip/ChipGroup$LayoutParams;

    invoke-direct {v0, p1}, Lcom/google/android/material/chip/ChipGroup$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getCheckedChipId()I
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/chip/ChipGroup;->singleSelection:Z

    .line 3
    if-eqz v0, :cond_7

    .line 5
    iget v0, p0, Lcom/google/android/material/chip/ChipGroup;->checkedId:I

    .line 7
    goto :goto_8

    .line 8
    :cond_7
    const/4 v0, -0x1

    .line 9
    :goto_8
    return v0
.end method

.method public getCheckedChipIds()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
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
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 10
    move-result v2

    .line 11
    if-ge v1, v2, :cond_30

    .line 13
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 16
    move-result-object v2

    .line 17
    instance-of v3, v2, Lcom/google/android/material/chip/Chip;

    .line 19
    if-eqz v3, :cond_2d

    .line 21
    move-object v3, v2

    .line 22
    check-cast v3, Lcom/google/android/material/chip/Chip;

    .line 24
    invoke-virtual {v3}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 27
    move-result v3

    .line 28
    if-eqz v3, :cond_2d

    .line 30
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    .line 33
    move-result v2

    .line 34
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 37
    move-result-object v2

    .line 38
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    iget-boolean v2, p0, Lcom/google/android/material/chip/ChipGroup;->singleSelection:Z

    .line 43
    if-eqz v2, :cond_2d

    .line 45
    return-object v0

    .line 46
    :cond_2d
    add-int/lit8 v1, v1, 0x1

    .line 48
    goto :goto_6

    .line 49
    :cond_30
    return-object v0
.end method

.method public getChipSpacingHorizontal()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/google/android/material/chip/ChipGroup;->chipSpacingHorizontal:I

    .line 3
    return v0
.end method

.method public getChipSpacingVertical()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/google/android/material/chip/ChipGroup;->chipSpacingVertical:I

    .line 3
    return v0
.end method

.method public getIndexOfChip(Landroid/view/View;)I
    .registers 6

    .line 1
    instance-of v0, p1, Lcom/google/android/material/chip/Chip;

    .line 3
    const/4 v1, -0x1

    .line 4
    if-nez v0, :cond_6

    .line 6
    return v1

    .line 7
    :cond_6
    const/4 v0, 0x0

    .line 8
    move v2, v0

    .line 9
    :goto_8
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 12
    move-result v3

    .line 13
    if-ge v0, v3, :cond_24

    .line 15
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 18
    move-result-object v3

    .line 19
    instance-of v3, v3, Lcom/google/android/material/chip/Chip;

    .line 21
    if-eqz v3, :cond_21

    .line 23
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 26
    move-result-object v3

    .line 27
    check-cast v3, Lcom/google/android/material/chip/Chip;

    .line 29
    if-ne v3, p1, :cond_1f

    .line 31
    return v2

    .line 32
    :cond_1f
    add-int/lit8 v2, v2, 0x1

    .line 34
    :cond_21
    add-int/lit8 v0, v0, 0x1

    .line 36
    goto :goto_8

    .line 37
    :cond_24
    return v1
.end method

.method public isSelectionRequired()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/chip/ChipGroup;->selectionRequired:Z

    .line 3
    return v0
.end method

.method public isSingleLine()Z
    .registers 2

    .line 1
    invoke-super {p0}, Lcom/google/android/material/internal/FlowLayout;->isSingleLine()Z

    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public isSingleSelection()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/chip/ChipGroup;->singleSelection:Z

    .line 3
    return v0
.end method

.method public onFinishInflate()V
    .registers 3

    .line 1
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 4
    iget v0, p0, Lcom/google/android/material/chip/ChipGroup;->checkedId:I

    .line 6
    const/4 v1, -0x1

    .line 7
    if-eq v0, v1, :cond_11

    .line 9
    const/4 v1, 0x1

    .line 10
    invoke-direct {p0, v0, v1}, Lcom/google/android/material/chip/ChipGroup;->setCheckedStateForView(IZ)V

    .line 13
    iget v0, p0, Lcom/google/android/material/chip/ChipGroup;->checkedId:I

    .line 15
    invoke-direct {p0, v0}, Lcom/google/android/material/chip/ChipGroup;->setCheckedId(I)V

    .line 18
    :cond_11
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 6

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 4
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipGroup;->isSingleLine()Z

    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_e

    .line 10
    invoke-direct {p0}, Lcom/google/android/material/chip/ChipGroup;->getChipCount()I

    .line 13
    move-result v0

    .line 14
    goto :goto_f

    .line 15
    :cond_e
    const/4 v0, -0x1

    .line 16
    :goto_f
    invoke-virtual {p0}, Lcom/google/android/material/internal/FlowLayout;->getRowCount()I

    .line 19
    move-result v1

    .line 20
    const/4 v2, 0x0

    .line 21
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipGroup;->isSingleSelection()Z

    .line 24
    move-result v3

    .line 25
    if-eqz v3, :cond_1c

    .line 27
    const/4 v3, 0x1

    .line 28
    goto :goto_1d

    .line 29
    :cond_1c
    const/4 v3, 0x2

    .line 30
    :goto_1d
    invoke-static {v1, v0, v3, v2}, Ln0/c$c;->a(IIIZ)Ln0/c$c;

    .line 33
    move-result-object v0

    .line 34
    iget-object v0, v0, Ln0/c$c;->a:Ljava/lang/Object;

    .line 36
    check-cast v0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    .line 38
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCollectionInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;)V

    .line 41
    return-void
.end method

.method public setChipSpacing(I)V
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipGroup;->setChipSpacingHorizontal(I)V

    .line 4
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipGroup;->setChipSpacingVertical(I)V

    .line 7
    return-void
.end method

.method public setChipSpacingHorizontal(I)V
    .registers 3

    .line 1
    iget v0, p0, Lcom/google/android/material/chip/ChipGroup;->chipSpacingHorizontal:I

    .line 3
    if-eq v0, p1, :cond_c

    .line 5
    iput p1, p0, Lcom/google/android/material/chip/ChipGroup;->chipSpacingHorizontal:I

    .line 7
    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/FlowLayout;->setItemSpacing(I)V

    .line 10
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 13
    :cond_c
    return-void
.end method

.method public setChipSpacingHorizontalResource(I)V
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 8
    move-result p1

    .line 9
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipGroup;->setChipSpacingHorizontal(I)V

    .line 12
    return-void
.end method

.method public setChipSpacingResource(I)V
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 8
    move-result p1

    .line 9
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipGroup;->setChipSpacing(I)V

    .line 12
    return-void
.end method

.method public setChipSpacingVertical(I)V
    .registers 3

    .line 1
    iget v0, p0, Lcom/google/android/material/chip/ChipGroup;->chipSpacingVertical:I

    .line 3
    if-eq v0, p1, :cond_c

    .line 5
    iput p1, p0, Lcom/google/android/material/chip/ChipGroup;->chipSpacingVertical:I

    .line 7
    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/FlowLayout;->setLineSpacing(I)V

    .line 10
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 13
    :cond_c
    return-void
.end method

.method public setChipSpacingVerticalResource(I)V
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 8
    move-result p1

    .line 9
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipGroup;->setChipSpacingVertical(I)V

    .line 12
    return-void
.end method

.method public setDividerDrawableHorizontal(Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 3
    const-string v0, "Changing divider drawables have no effect. ChipGroup do not use divider drawables as spacing."

    .line 5
    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 8
    throw p1
.end method

.method public setDividerDrawableVertical(Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 3
    const-string v0, "Changing divider drawables have no effect. ChipGroup do not use divider drawables as spacing."

    .line 5
    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 8
    throw p1
.end method

.method public setFlexWrap(I)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 3
    const-string v0, "Changing flex wrap not allowed. ChipGroup exposes a singleLine attribute instead."

    .line 5
    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 8
    throw p1
.end method

.method public setOnCheckedChangeListener(Lcom/google/android/material/chip/ChipGroup$OnCheckedChangeListener;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/google/android/material/chip/ChipGroup;->onCheckedChangeListener:Lcom/google/android/material/chip/ChipGroup$OnCheckedChangeListener;

    .line 3
    return-void
.end method

.method public setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/ChipGroup;->passThroughListener:Lcom/google/android/material/chip/ChipGroup$PassThroughHierarchyChangeListener;

    .line 3
    invoke-static {v0, p1}, Lcom/google/android/material/chip/ChipGroup$PassThroughHierarchyChangeListener;->access$202(Lcom/google/android/material/chip/ChipGroup$PassThroughHierarchyChangeListener;Landroid/view/ViewGroup$OnHierarchyChangeListener;)Landroid/view/ViewGroup$OnHierarchyChangeListener;

    .line 6
    return-void
.end method

.method public setSelectionRequired(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/google/android/material/chip/ChipGroup;->selectionRequired:Z

    .line 3
    return-void
.end method

.method public setShowDividerHorizontal(I)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 3
    const-string v0, "Changing divider modes has no effect. ChipGroup do not use divider drawables as spacing."

    .line 5
    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 8
    throw p1
.end method

.method public setShowDividerVertical(I)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 3
    const-string v0, "Changing divider modes has no effect. ChipGroup do not use divider drawables as spacing."

    .line 5
    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 8
    throw p1
.end method

.method public setSingleLine(I)V
    .registers 3

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipGroup;->setSingleLine(Z)V

    return-void
.end method

.method public setSingleLine(Z)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Lcom/google/android/material/internal/FlowLayout;->setSingleLine(Z)V

    return-void
.end method

.method public setSingleSelection(I)V
    .registers 3

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipGroup;->setSingleSelection(Z)V

    return-void
.end method

.method public setSingleSelection(Z)V
    .registers 3

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/chip/ChipGroup;->singleSelection:Z

    if-eq v0, p1, :cond_9

    .line 2
    iput-boolean p1, p0, Lcom/google/android/material/chip/ChipGroup;->singleSelection:Z

    .line 3
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipGroup;->clearCheck()V

    :cond_9
    return-void
.end method
