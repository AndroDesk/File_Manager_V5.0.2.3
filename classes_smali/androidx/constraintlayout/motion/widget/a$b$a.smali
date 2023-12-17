.class public final Landroidx/constraintlayout/motion/widget/a$b$a;
.super Ljava/lang/Object;
.source "MotionScene.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/motion/widget/a$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Landroidx/constraintlayout/motion/widget/a$b;

.field public b:I

.field public c:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/constraintlayout/motion/widget/a$b;Landroid/content/res/XmlResourceParser;)V
    .registers 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Landroidx/constraintlayout/motion/widget/a$b$a;->b:I

    .line 7
    const/16 v0, 0x11

    .line 9
    iput v0, p0, Landroidx/constraintlayout/motion/widget/a$b$a;->c:I

    .line 11
    iput-object p2, p0, Landroidx/constraintlayout/motion/widget/a$b$a;->a:Landroidx/constraintlayout/motion/widget/a$b;

    .line 13
    invoke-static {p3}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    .line 16
    move-result-object p2

    .line 17
    sget-object p3, Lz/d;->OnClick:[I

    .line 19
    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 22
    move-result-object p1

    .line 23
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    .line 26
    move-result p2

    .line 27
    const/4 p3, 0x0

    .line 28
    :goto_1b
    if-ge p3, p2, :cond_3d

    .line 30
    invoke-virtual {p1, p3}, Landroid/content/res/TypedArray;->getIndex(I)I

    .line 33
    move-result v0

    .line 34
    sget v1, Lz/d;->OnClick_targetId:I

    .line 36
    if-ne v0, v1, :cond_2e

    .line 38
    iget v1, p0, Landroidx/constraintlayout/motion/widget/a$b$a;->b:I

    .line 40
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 43
    move-result v0

    .line 44
    iput v0, p0, Landroidx/constraintlayout/motion/widget/a$b$a;->b:I

    .line 46
    goto :goto_3a

    .line 47
    :cond_2e
    sget v1, Lz/d;->OnClick_clickAction:I

    .line 49
    if-ne v0, v1, :cond_3a

    .line 51
    iget v1, p0, Landroidx/constraintlayout/motion/widget/a$b$a;->c:I

    .line 53
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 56
    move-result v0

    .line 57
    iput v0, p0, Landroidx/constraintlayout/motion/widget/a$b$a;->c:I

    .line 59
    :cond_3a
    :goto_3a
    add-int/lit8 p3, p3, 0x1

    .line 61
    goto :goto_1b

    .line 62
    :cond_3d
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 65
    return-void
.end method


# virtual methods
.method public final a(Landroidx/constraintlayout/motion/widget/MotionLayout;ILandroidx/constraintlayout/motion/widget/a$b;)V
    .registers 11

    .line 1
    iget v0, p0, Landroidx/constraintlayout/motion/widget/a$b$a;->b:I

    .line 3
    const/4 v1, -0x1

    .line 4
    if-ne v0, v1, :cond_6

    .line 6
    goto :goto_a

    .line 7
    :cond_6
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    move-result-object p1

    .line 11
    :goto_a
    if-nez p1, :cond_21

    .line 13
    const-string p1, "OnClick could not find id "

    .line 15
    invoke-static {p1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    move-result-object p1

    .line 19
    iget p2, p0, Landroidx/constraintlayout/motion/widget/a$b$a;->b:I

    .line 21
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    move-result-object p1

    .line 28
    const-string p2, "MotionScene"

    .line 30
    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    return-void

    .line 34
    :cond_21
    iget v0, p3, Landroidx/constraintlayout/motion/widget/a$b;->d:I

    .line 36
    iget p3, p3, Landroidx/constraintlayout/motion/widget/a$b;->c:I

    .line 38
    if-ne v0, v1, :cond_2b

    .line 40
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 43
    return-void

    .line 44
    :cond_2b
    iget v1, p0, Landroidx/constraintlayout/motion/widget/a$b$a;->c:I

    .line 46
    and-int/lit8 v2, v1, 0x1

    .line 48
    const/4 v3, 0x0

    .line 49
    const/4 v4, 0x1

    .line 50
    if-eqz v2, :cond_37

    .line 52
    if-ne p2, v0, :cond_37

    .line 54
    move v5, v4

    .line 55
    goto :goto_38

    .line 56
    :cond_37
    move v5, v3

    .line 57
    :goto_38
    and-int/lit16 v6, v1, 0x100

    .line 59
    if-eqz v6, :cond_40

    .line 61
    if-ne p2, v0, :cond_40

    .line 63
    move v6, v4

    .line 64
    goto :goto_41

    .line 65
    :cond_40
    move v6, v3

    .line 66
    :goto_41
    or-int/2addr v5, v6

    .line 67
    if-eqz v2, :cond_48

    .line 69
    if-ne p2, v0, :cond_48

    .line 71
    move v0, v4

    .line 72
    goto :goto_49

    .line 73
    :cond_48
    move v0, v3

    .line 74
    :goto_49
    or-int/2addr v0, v5

    .line 75
    and-int/lit8 v2, v1, 0x10

    .line 77
    if-eqz v2, :cond_52

    .line 79
    if-ne p2, p3, :cond_52

    .line 81
    move v2, v4

    .line 82
    goto :goto_53

    .line 83
    :cond_52
    move v2, v3

    .line 84
    :goto_53
    or-int/2addr v0, v2

    .line 85
    and-int/lit16 v1, v1, 0x1000

    .line 87
    if-eqz v1, :cond_5b

    .line 89
    if-ne p2, p3, :cond_5b

    .line 91
    move v3, v4

    .line 92
    :cond_5b
    or-int p2, v0, v3

    .line 94
    if-eqz p2, :cond_62

    .line 96
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    :cond_62
    return-void
.end method

.method public final b(Landroidx/constraintlayout/motion/widget/MotionLayout;)V
    .registers 4

    .line 1
    iget v0, p0, Landroidx/constraintlayout/motion/widget/a$b$a;->b:I

    .line 3
    const/4 v1, -0x1

    .line 4
    if-ne v0, v1, :cond_6

    .line 6
    return-void

    .line 7
    :cond_6
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    move-result-object p1

    .line 11
    if-nez p1, :cond_21

    .line 13
    const-string p1, " (*)  could not find id "

    .line 15
    invoke-static {p1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    move-result-object p1

    .line 19
    iget v0, p0, Landroidx/constraintlayout/motion/widget/a$b$a;->b:I

    .line 21
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    move-result-object p1

    .line 28
    const-string v0, "MotionScene"

    .line 30
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    return-void

    .line 34
    :cond_21
    const/4 v0, 0x0

    .line 35
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 38
    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .registers 10

    .line 1
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/a$b$a;->a:Landroidx/constraintlayout/motion/widget/a$b;

    .line 3
    iget-object v0, p1, Landroidx/constraintlayout/motion/widget/a$b;->j:Landroidx/constraintlayout/motion/widget/a;

    .line 5
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/a;->a:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 7
    iget-boolean v2, v1, Landroidx/constraintlayout/motion/widget/MotionLayout;->i:Z

    .line 9
    if-nez v2, :cond_b

    .line 11
    return-void

    .line 12
    :cond_b
    iget v2, p1, Landroidx/constraintlayout/motion/widget/a$b;->d:I

    .line 14
    const/4 v3, -0x1

    .line 15
    if-ne v2, v3, :cond_36

    .line 17
    invoke-virtual {v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getCurrentState()I

    .line 20
    move-result p1

    .line 21
    if-ne p1, v3, :cond_1e

    .line 23
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/a$b$a;->a:Landroidx/constraintlayout/motion/widget/a$b;

    .line 25
    iget p1, p1, Landroidx/constraintlayout/motion/widget/a$b;->c:I

    .line 27
    invoke-virtual {v1, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->j(I)V

    .line 30
    return-void

    .line 31
    :cond_1e
    new-instance v0, Landroidx/constraintlayout/motion/widget/a$b;

    .line 33
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/a$b$a;->a:Landroidx/constraintlayout/motion/widget/a$b;

    .line 35
    iget-object v3, v2, Landroidx/constraintlayout/motion/widget/a$b;->j:Landroidx/constraintlayout/motion/widget/a;

    .line 37
    invoke-direct {v0, v3, v2}, Landroidx/constraintlayout/motion/widget/a$b;-><init>(Landroidx/constraintlayout/motion/widget/a;Landroidx/constraintlayout/motion/widget/a$b;)V

    .line 40
    iput p1, v0, Landroidx/constraintlayout/motion/widget/a$b;->d:I

    .line 42
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/a$b$a;->a:Landroidx/constraintlayout/motion/widget/a$b;

    .line 44
    iget p1, p1, Landroidx/constraintlayout/motion/widget/a$b;->c:I

    .line 46
    iput p1, v0, Landroidx/constraintlayout/motion/widget/a$b;->c:I

    .line 48
    invoke-virtual {v1, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setTransition(Landroidx/constraintlayout/motion/widget/a$b;)V

    .line 51
    invoke-virtual {v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->i()V

    .line 54
    return-void

    .line 55
    :cond_36
    iget-object v0, v0, Landroidx/constraintlayout/motion/widget/a;->c:Landroidx/constraintlayout/motion/widget/a$b;

    .line 57
    iget v2, p0, Landroidx/constraintlayout/motion/widget/a$b$a;->c:I

    .line 59
    and-int/lit8 v4, v2, 0x1

    .line 61
    const/4 v5, 0x0

    .line 62
    const/4 v6, 0x1

    .line 63
    if-nez v4, :cond_47

    .line 65
    and-int/lit16 v4, v2, 0x100

    .line 67
    if-eqz v4, :cond_45

    .line 69
    goto :goto_47

    .line 70
    :cond_45
    move v4, v5

    .line 71
    goto :goto_48

    .line 72
    :cond_47
    :goto_47
    move v4, v6

    .line 73
    :goto_48
    and-int/lit8 v7, v2, 0x10

    .line 75
    if-nez v7, :cond_53

    .line 77
    and-int/lit16 v2, v2, 0x1000

    .line 79
    if-eqz v2, :cond_51

    .line 81
    goto :goto_53

    .line 82
    :cond_51
    move v2, v5

    .line 83
    goto :goto_54

    .line 84
    :cond_53
    :goto_53
    move v2, v6

    .line 85
    :goto_54
    if-eqz v4, :cond_5a

    .line 87
    if-eqz v2, :cond_5a

    .line 89
    move v7, v6

    .line 90
    goto :goto_5b

    .line 91
    :cond_5a
    move v7, v5

    .line 92
    :goto_5b
    if-eqz v7, :cond_7a

    .line 94
    if-eq v0, p1, :cond_62

    .line 96
    invoke-virtual {v1, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setTransition(Landroidx/constraintlayout/motion/widget/a$b;)V

    .line 99
    :cond_62
    invoke-virtual {v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getCurrentState()I

    .line 102
    move-result p1

    .line 103
    invoke-virtual {v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getEndState()I

    .line 106
    move-result v7

    .line 107
    if-eq p1, v7, :cond_79

    .line 109
    invoke-virtual {v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getProgress()F

    .line 112
    move-result p1

    .line 113
    const/high16 v7, 0x3f000000  # 0.5f

    .line 115
    cmpl-float p1, p1, v7

    .line 117
    if-lez p1, :cond_77

    .line 119
    goto :goto_79

    .line 120
    :cond_77
    move v2, v5

    .line 121
    goto :goto_7a

    .line 122
    :cond_79
    :goto_79
    move v4, v5

    .line 123
    :cond_7a
    :goto_7a
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/a$b$a;->a:Landroidx/constraintlayout/motion/widget/a$b;

    .line 125
    if-ne p1, v0, :cond_7f

    .line 127
    goto :goto_89

    .line 128
    :cond_7f
    iget v0, p1, Landroidx/constraintlayout/motion/widget/a$b;->c:I

    .line 130
    iget v7, p1, Landroidx/constraintlayout/motion/widget/a$b;->d:I

    .line 132
    if-ne v7, v3, :cond_8b

    .line 134
    iget v3, v1, Landroidx/constraintlayout/motion/widget/MotionLayout;->e:I

    .line 136
    if-eq v3, v0, :cond_92

    .line 138
    :cond_89
    :goto_89
    move v5, v6

    .line 139
    goto :goto_92

    .line 140
    :cond_8b
    iget v3, v1, Landroidx/constraintlayout/motion/widget/MotionLayout;->e:I

    .line 142
    if-eq v3, v7, :cond_89

    .line 144
    if-ne v3, v0, :cond_92

    .line 146
    goto :goto_89

    .line 147
    :cond_92
    :goto_92
    if-eqz v5, :cond_d1

    .line 149
    if-eqz v4, :cond_a2

    .line 151
    iget v0, p0, Landroidx/constraintlayout/motion/widget/a$b$a;->c:I

    .line 153
    and-int/2addr v0, v6

    .line 154
    if-eqz v0, :cond_a2

    .line 156
    invoke-virtual {v1, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setTransition(Landroidx/constraintlayout/motion/widget/a$b;)V

    .line 159
    invoke-virtual {v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->i()V

    .line 162
    goto :goto_d1

    .line 163
    :cond_a2
    const/4 v0, 0x0

    .line 164
    if-eqz v2, :cond_b2

    .line 166
    iget v3, p0, Landroidx/constraintlayout/motion/widget/a$b$a;->c:I

    .line 168
    and-int/lit8 v3, v3, 0x10

    .line 170
    if-eqz v3, :cond_b2

    .line 172
    invoke-virtual {v1, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setTransition(Landroidx/constraintlayout/motion/widget/a$b;)V

    .line 175
    invoke-virtual {v1, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->a(F)V

    .line 178
    goto :goto_d1

    .line 179
    :cond_b2
    if-eqz v4, :cond_c3

    .line 181
    iget v3, p0, Landroidx/constraintlayout/motion/widget/a$b$a;->c:I

    .line 183
    and-int/lit16 v3, v3, 0x100

    .line 185
    if-eqz v3, :cond_c3

    .line 187
    invoke-virtual {v1, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setTransition(Landroidx/constraintlayout/motion/widget/a$b;)V

    .line 190
    const/high16 p1, 0x3f800000  # 1.0f

    .line 192
    invoke-virtual {v1, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setProgress(F)V

    .line 195
    goto :goto_d1

    .line 196
    :cond_c3
    if-eqz v2, :cond_d1

    .line 198
    iget v2, p0, Landroidx/constraintlayout/motion/widget/a$b$a;->c:I

    .line 200
    and-int/lit16 v2, v2, 0x1000

    .line 202
    if-eqz v2, :cond_d1

    .line 204
    invoke-virtual {v1, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setTransition(Landroidx/constraintlayout/motion/widget/a$b;)V

    .line 207
    invoke-virtual {v1, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setProgress(F)V

    .line 210
    :cond_d1
    :goto_d1
    return-void
.end method
