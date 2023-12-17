.class public abstract Landroidx/constraintlayout/widget/b;
.super Landroid/view/View;
.source "ConstraintHelper.java"


# instance fields
.field public a:[I

.field public b:I

.field public c:Landroid/content/Context;

.field public d:Landroidx/constraintlayout/core/widgets/a;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:[Landroid/view/View;

.field public h:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 4
    const/16 v0, 0x20

    .line 6
    new-array v0, v0, [I

    .line 8
    iput-object v0, p0, Landroidx/constraintlayout/widget/b;->a:[I

    .line 10
    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Landroidx/constraintlayout/widget/b;->g:[Landroid/view/View;

    .line 13
    new-instance v0, Ljava/util/HashMap;

    .line 15
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 18
    iput-object v0, p0, Landroidx/constraintlayout/widget/b;->h:Ljava/util/HashMap;

    .line 20
    iput-object p1, p0, Landroidx/constraintlayout/widget/b;->c:Landroid/content/Context;

    .line 22
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/b;->j()V

    .line 25
    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/String;)V
    .registers 7

    .line 1
    if-eqz p1, :cond_9b

    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_a

    .line 9
    goto/16 :goto_9b

    .line 11
    :cond_a
    iget-object v0, p0, Landroidx/constraintlayout/widget/b;->c:Landroid/content/Context;

    .line 13
    if-nez v0, :cond_f

    .line 15
    return-void

    .line 16
    :cond_f
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 23
    move-result-object v0

    .line 24
    instance-of v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 26
    if-eqz v0, :cond_21

    .line 28
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 31
    move-result-object v0

    .line 32
    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 34
    :cond_21
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 37
    move-result-object v0

    .line 38
    instance-of v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 40
    const/4 v1, 0x0

    .line 41
    if-eqz v0, :cond_31

    .line 43
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 46
    move-result-object v0

    .line 47
    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 49
    goto :goto_32

    .line 50
    :cond_31
    move-object v0, v1

    .line 51
    :goto_32
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    .line 54
    move-result v2

    .line 55
    const/4 v3, 0x0

    .line 56
    if-eqz v2, :cond_49

    .line 58
    if-eqz v0, :cond_49

    .line 60
    invoke-virtual {v0, v3, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->getDesignInformation(ILjava/lang/Object;)Ljava/lang/Object;

    .line 63
    move-result-object v2

    .line 64
    instance-of v4, v2, Ljava/lang/Integer;

    .line 66
    if-eqz v4, :cond_49

    .line 68
    check-cast v2, Ljava/lang/Integer;

    .line 70
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 73
    move-result v3

    .line 74
    :cond_49
    if-nez v3, :cond_51

    .line 76
    if-eqz v0, :cond_51

    .line 78
    invoke-virtual {p0, v0, p1}, Landroidx/constraintlayout/widget/b;->i(Landroidx/constraintlayout/widget/ConstraintLayout;Ljava/lang/String;)I

    .line 81
    move-result v3

    .line 82
    :cond_51
    if-nez v3, :cond_5d

    .line 84
    :try_start_53
    const-class v0, Lz/c;

    .line 86
    invoke-virtual {v0, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 89
    move-result-object v0

    .line 90
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    .line 93
    move-result v3
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_5d} :catch_5d

    .line 94
    :catch_5d
    :cond_5d
    if-nez v3, :cond_71

    .line 96
    iget-object v0, p0, Landroidx/constraintlayout/widget/b;->c:Landroid/content/Context;

    .line 98
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 101
    move-result-object v0

    .line 102
    iget-object v1, p0, Landroidx/constraintlayout/widget/b;->c:Landroid/content/Context;

    .line 104
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 107
    move-result-object v1

    .line 108
    const-string v2, "id"

    .line 110
    invoke-virtual {v0, p1, v2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    move-result v3

    .line 114
    :cond_71
    if-eqz v3, :cond_80

    .line 116
    iget-object v0, p0, Landroidx/constraintlayout/widget/b;->h:Ljava/util/HashMap;

    .line 118
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 121
    move-result-object v1

    .line 122
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    invoke-virtual {p0, v3}, Landroidx/constraintlayout/widget/b;->e(I)V

    .line 128
    goto :goto_9b

    .line 129
    :cond_80
    new-instance v0, Ljava/lang/StringBuilder;

    .line 131
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 134
    const-string v1, "Could not find id of \""

    .line 136
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    const-string p1, "\""

    .line 144
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 150
    move-result-object p1

    .line 151
    const-string v0, "ConstraintHelper"

    .line 153
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    :cond_9b
    :goto_9b
    return-void
.end method

.method public final e(I)V
    .registers 5

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    .line 4
    move-result v0

    .line 5
    if-ne p1, v0, :cond_7

    .line 7
    return-void

    .line 8
    :cond_7
    iget v0, p0, Landroidx/constraintlayout/widget/b;->b:I

    .line 10
    add-int/lit8 v0, v0, 0x1

    .line 12
    iget-object v1, p0, Landroidx/constraintlayout/widget/b;->a:[I

    .line 14
    array-length v2, v1

    .line 15
    if-le v0, v2, :cond_19

    .line 17
    array-length v0, v1

    .line 18
    mul-int/lit8 v0, v0, 0x2

    .line 20
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    .line 23
    move-result-object v0

    .line 24
    iput-object v0, p0, Landroidx/constraintlayout/widget/b;->a:[I

    .line 26
    :cond_19
    iget-object v0, p0, Landroidx/constraintlayout/widget/b;->a:[I

    .line 28
    iget v1, p0, Landroidx/constraintlayout/widget/b;->b:I

    .line 30
    aput p1, v0, v1

    .line 32
    add-int/lit8 v1, v1, 0x1

    .line 34
    iput v1, p0, Landroidx/constraintlayout/widget/b;->b:I

    .line 36
    return-void
.end method

.method public final f(Ljava/lang/String;)V
    .registers 9

    .line 1
    if-eqz p1, :cond_77

    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_9

    .line 9
    goto :goto_77

    .line 10
    :cond_9
    iget-object v0, p0, Landroidx/constraintlayout/widget/b;->c:Landroid/content/Context;

    .line 12
    if-nez v0, :cond_e

    .line 14
    return-void

    .line 15
    :cond_e
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 18
    move-result-object p1

    .line 19
    const/4 v0, 0x0

    .line 20
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 23
    move-result-object v1

    .line 24
    instance-of v1, v1, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 26
    if-eqz v1, :cond_21

    .line 28
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 31
    move-result-object v0

    .line 32
    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 34
    :cond_21
    const-string v1, "ConstraintHelper"

    .line 36
    if-nez v0, :cond_2b

    .line 38
    const-string p1, "Parent not a ConstraintLayout"

    .line 40
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    return-void

    .line 44
    :cond_2b
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 47
    move-result v2

    .line 48
    const/4 v3, 0x0

    .line 49
    :goto_30
    if-ge v3, v2, :cond_77

    .line 51
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 54
    move-result-object v4

    .line 55
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 58
    move-result-object v5

    .line 59
    instance-of v6, v5, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    .line 61
    if-eqz v6, :cond_74

    .line 63
    check-cast v5, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    .line 65
    iget-object v5, v5, Landroidx/constraintlayout/widget/ConstraintLayout$b;->Y:Ljava/lang/String;

    .line 67
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 70
    move-result v5

    .line 71
    if-eqz v5, :cond_74

    .line 73
    invoke-virtual {v4}, Landroid/view/View;->getId()I

    .line 76
    move-result v5

    .line 77
    const/4 v6, -0x1

    .line 78
    if-ne v5, v6, :cond_6d

    .line 80
    const-string v5, "to use ConstraintTag view "

    .line 82
    invoke-static {v5}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    move-result-object v5

    .line 86
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 89
    move-result-object v4

    .line 90
    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 93
    move-result-object v4

    .line 94
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    const-string v4, " must have an ID"

    .line 99
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    move-result-object v4

    .line 106
    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    goto :goto_74

    .line 110
    :cond_6d
    invoke-virtual {v4}, Landroid/view/View;->getId()I

    .line 113
    move-result v4

    .line 114
    invoke-virtual {p0, v4}, Landroidx/constraintlayout/widget/b;->e(I)V

    .line 117
    :cond_74
    :goto_74
    add-int/lit8 v3, v3, 0x1

    .line 119
    goto :goto_30

    .line 120
    :cond_77
    :goto_77
    return-void
.end method

.method public final g(Landroidx/constraintlayout/widget/ConstraintLayout;)V
    .registers 7

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getElevation()F

    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x0

    .line 10
    :goto_9
    iget v3, p0, Landroidx/constraintlayout/widget/b;->b:I

    .line 12
    if-ge v2, v3, :cond_2a

    .line 14
    iget-object v3, p0, Landroidx/constraintlayout/widget/b;->a:[I

    .line 16
    aget v3, v3, v2

    .line 18
    invoke-virtual {p1, v3}, Landroidx/constraintlayout/widget/ConstraintLayout;->getViewById(I)Landroid/view/View;

    .line 21
    move-result-object v3

    .line 22
    if-eqz v3, :cond_27

    .line 24
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 27
    const/4 v4, 0x0

    .line 28
    cmpl-float v4, v1, v4

    .line 30
    if-lez v4, :cond_27

    .line 32
    invoke-virtual {v3}, Landroid/view/View;->getTranslationZ()F

    .line 35
    move-result v4

    .line 36
    add-float/2addr v4, v1

    .line 37
    invoke-virtual {v3, v4}, Landroid/view/View;->setTranslationZ(F)V

    .line 40
    :cond_27
    add-int/lit8 v2, v2, 0x1

    .line 42
    goto :goto_9

    .line 43
    :cond_2a
    return-void
.end method

.method public getReferencedIds()[I
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/widget/b;->a:[I

    .line 3
    iget v1, p0, Landroidx/constraintlayout/widget/b;->b:I

    .line 5
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public h(Landroidx/constraintlayout/widget/ConstraintLayout;)V
    .registers 2

    return-void
.end method

.method public final i(Landroidx/constraintlayout/widget/ConstraintLayout;Ljava/lang/String;)I
    .registers 10

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p2, :cond_38

    .line 4
    if-nez p1, :cond_6

    .line 6
    goto :goto_38

    .line 7
    :cond_6
    iget-object v1, p0, Landroidx/constraintlayout/widget/b;->c:Landroid/content/Context;

    .line 9
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 12
    move-result-object v1

    .line 13
    if-nez v1, :cond_f

    .line 15
    return v0

    .line 16
    :cond_f
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 19
    move-result v2

    .line 20
    move v3, v0

    .line 21
    :goto_14
    if-ge v3, v2, :cond_38

    .line 23
    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 26
    move-result-object v4

    .line 27
    invoke-virtual {v4}, Landroid/view/View;->getId()I

    .line 30
    move-result v5

    .line 31
    const/4 v6, -0x1

    .line 32
    if-eq v5, v6, :cond_35

    .line 34
    const/4 v5, 0x0

    .line 35
    :try_start_22
    invoke-virtual {v4}, Landroid/view/View;->getId()I

    .line 38
    move-result v6

    .line 39
    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    .line 42
    move-result-object v5
    :try_end_2a
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_22 .. :try_end_2a} :catch_2a

    .line 43
    :catch_2a
    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 46
    move-result v5

    .line 47
    if-eqz v5, :cond_35

    .line 49
    invoke-virtual {v4}, Landroid/view/View;->getId()I

    .line 52
    move-result p1

    .line 53
    return p1

    .line 54
    :cond_35
    add-int/lit8 v3, v3, 0x1

    .line 56
    goto :goto_14

    .line 57
    :cond_38
    :goto_38
    return v0
.end method

.method public j()V
    .registers 1

    return-void
.end method

.method public k(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Z)V
    .registers 3

    return-void
.end method

.method public final l()V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/widget/b;->d:Landroidx/constraintlayout/core/widgets/a;

    .line 3
    if-nez v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 9
    move-result-object v0

    .line 10
    instance-of v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    .line 12
    if-eqz v1, :cond_13

    .line 14
    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    .line 16
    iget-object v1, p0, Landroidx/constraintlayout/widget/b;->d:Landroidx/constraintlayout/core/widgets/a;

    .line 18
    iput-object v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->q0:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 20
    :cond_13
    return-void
.end method

.method public onAttachedToWindow()V
    .registers 2

    .line 1
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 4
    iget-object v0, p0, Landroidx/constraintlayout/widget/b;->e:Ljava/lang/String;

    .line 6
    if-eqz v0, :cond_a

    .line 8
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/widget/b;->setIds(Ljava/lang/String;)V

    .line 11
    :cond_a
    iget-object v0, p0, Landroidx/constraintlayout/widget/b;->f:Ljava/lang/String;

    .line 13
    if-eqz v0, :cond_11

    .line 15
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/widget/b;->setReferenceTags(Ljava/lang/String;)V

    .line 18
    :cond_11
    return-void
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .registers 2

    return-void
.end method

.method public final onMeasure(II)V
    .registers 3

    .line 1
    const/4 p1, 0x0

    .line 2
    invoke-virtual {p0, p1, p1}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 5
    return-void
.end method

.method public setIds(Ljava/lang/String;)V
    .registers 5

    .line 1
    iput-object p1, p0, Landroidx/constraintlayout/widget/b;->e:Ljava/lang/String;

    .line 3
    if-nez p1, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    const/4 v0, 0x0

    .line 7
    iput v0, p0, Landroidx/constraintlayout/widget/b;->b:I

    .line 9
    :goto_8
    const/16 v1, 0x2c

    .line 11
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->indexOf(II)I

    .line 14
    move-result v1

    .line 15
    const/4 v2, -0x1

    .line 16
    if-ne v1, v2, :cond_19

    .line 18
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/widget/b;->d(Ljava/lang/String;)V

    .line 25
    return-void

    .line 26
    :cond_19
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/widget/b;->d(Ljava/lang/String;)V

    .line 33
    add-int/lit8 v0, v1, 0x1

    .line 35
    goto :goto_8
.end method

.method public setReferenceTags(Ljava/lang/String;)V
    .registers 5

    .line 1
    iput-object p1, p0, Landroidx/constraintlayout/widget/b;->f:Ljava/lang/String;

    .line 3
    if-nez p1, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    const/4 v0, 0x0

    .line 7
    iput v0, p0, Landroidx/constraintlayout/widget/b;->b:I

    .line 9
    :goto_8
    const/16 v1, 0x2c

    .line 11
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->indexOf(II)I

    .line 14
    move-result v1

    .line 15
    const/4 v2, -0x1

    .line 16
    if-ne v1, v2, :cond_19

    .line 18
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/widget/b;->f(Ljava/lang/String;)V

    .line 25
    return-void

    .line 26
    :cond_19
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/widget/b;->f(Ljava/lang/String;)V

    .line 33
    add-int/lit8 v0, v1, 0x1

    .line 35
    goto :goto_8
.end method

.method public setReferencedIds([I)V
    .registers 4

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Landroidx/constraintlayout/widget/b;->e:Ljava/lang/String;

    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Landroidx/constraintlayout/widget/b;->b:I

    .line 7
    :goto_6
    array-length v1, p1

    .line 8
    if-ge v0, v1, :cond_11

    .line 10
    aget v1, p1, v0

    .line 12
    invoke-virtual {p0, v1}, Landroidx/constraintlayout/widget/b;->e(I)V

    .line 15
    add-int/lit8 v0, v0, 0x1

    .line 17
    goto :goto_6

    .line 18
    :cond_11
    return-void
.end method

.method public final setTag(ILjava/lang/Object;)V
    .registers 3

    .line 1
    invoke-super {p0, p1, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 4
    if-nez p2, :cond_c

    .line 6
    iget-object p2, p0, Landroidx/constraintlayout/widget/b;->e:Ljava/lang/String;

    .line 8
    if-nez p2, :cond_c

    .line 10
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/widget/b;->e(I)V

    .line 13
    :cond_c
    return-void
.end method
