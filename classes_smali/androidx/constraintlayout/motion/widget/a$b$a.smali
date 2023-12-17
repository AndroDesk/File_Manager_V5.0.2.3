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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/constraintlayout/motion/widget/a$b;Landroid/content/res/XmlResourceParser;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroidx/constraintlayout/motion/widget/a$b$a;->b:I

    const/16 v0, 0x11

    iput v0, p0, Landroidx/constraintlayout/motion/widget/a$b$a;->c:I

    iput-object p2, p0, Landroidx/constraintlayout/motion/widget/a$b$a;->a:Landroidx/constraintlayout/motion/widget/a$b;

    invoke-static {p3}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object p2

    sget-object p3, Lz/d;->OnClick:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result p2

    const/4 p3, 0x0

    :goto_1b
    if-ge p3, p2, :cond_3d

    invoke-virtual {p1, p3}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v0

    sget v1, Lz/d;->OnClick_targetId:I

    if-ne v0, v1, :cond_2e

    iget v1, p0, Landroidx/constraintlayout/motion/widget/a$b$a;->b:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/motion/widget/a$b$a;->b:I

    goto :goto_3a

    :cond_2e
    sget v1, Lz/d;->OnClick_clickAction:I

    if-ne v0, v1, :cond_3a

    iget v1, p0, Landroidx/constraintlayout/motion/widget/a$b$a;->c:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/motion/widget/a$b$a;->c:I

    :cond_3a
    :goto_3a
    add-int/lit8 p3, p3, 0x1

    goto :goto_1b

    :cond_3d
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/constraintlayout/motion/widget/MotionLayout;ILandroidx/constraintlayout/motion/widget/a$b;)V
    .registers 11

    iget v0, p0, Landroidx/constraintlayout/motion/widget/a$b$a;->b:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_6

    goto :goto_a

    :cond_6
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    :goto_a
    if-nez p1, :cond_21

    const-string p1, "OnClick could not find id "

    invoke-static {p1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p2, p0, Landroidx/constraintlayout/motion/widget/a$b$a;->b:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MotionScene"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_21
    iget v0, p3, Landroidx/constraintlayout/motion/widget/a$b;->d:I

    iget p3, p3, Landroidx/constraintlayout/motion/widget/a$b;->c:I

    if-ne v0, v1, :cond_2b

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_2b
    iget v1, p0, Landroidx/constraintlayout/motion/widget/a$b$a;->c:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_37

    if-ne p2, v0, :cond_37

    move v5, v4

    goto :goto_38

    :cond_37
    move v5, v3

    :goto_38
    and-int/lit16 v6, v1, 0x100

    if-eqz v6, :cond_40

    if-ne p2, v0, :cond_40

    move v6, v4

    goto :goto_41

    :cond_40
    move v6, v3

    :goto_41
    or-int/2addr v5, v6

    if-eqz v2, :cond_48

    if-ne p2, v0, :cond_48

    move v0, v4

    goto :goto_49

    :cond_48
    move v0, v3

    :goto_49
    or-int/2addr v0, v5

    and-int/lit8 v2, v1, 0x10

    if-eqz v2, :cond_52

    if-ne p2, p3, :cond_52

    move v2, v4

    goto :goto_53

    :cond_52
    move v2, v3

    :goto_53
    or-int/2addr v0, v2

    and-int/lit16 v1, v1, 0x1000

    if-eqz v1, :cond_5b

    if-ne p2, p3, :cond_5b

    move v3, v4

    :cond_5b
    or-int p2, v0, v3

    if-eqz p2, :cond_62

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_62
    return-void
.end method

.method public final b(Landroidx/constraintlayout/motion/widget/MotionLayout;)V
    .registers 4

    iget v0, p0, Landroidx/constraintlayout/motion/widget/a$b$a;->b:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_6

    return-void

    :cond_6
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_21

    const-string p1, " (*)  could not find id "

    invoke-static {p1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v0, p0, Landroidx/constraintlayout/motion/widget/a$b$a;->b:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MotionScene"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_21
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .registers 10

    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/a$b$a;->a:Landroidx/constraintlayout/motion/widget/a$b;

    iget-object v0, p1, Landroidx/constraintlayout/motion/widget/a$b;->j:Landroidx/constraintlayout/motion/widget/a;

    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/a;->a:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget-boolean v2, v1, Landroidx/constraintlayout/motion/widget/MotionLayout;->i:Z

    if-nez v2, :cond_b

    return-void

    :cond_b
    iget v2, p1, Landroidx/constraintlayout/motion/widget/a$b;->d:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_36

    invoke-virtual {v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getCurrentState()I

    move-result p1

    if-ne p1, v3, :cond_1e

    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/a$b$a;->a:Landroidx/constraintlayout/motion/widget/a$b;

    iget p1, p1, Landroidx/constraintlayout/motion/widget/a$b;->c:I

    invoke-virtual {v1, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->j(I)V

    return-void

    :cond_1e
    new-instance v0, Landroidx/constraintlayout/motion/widget/a$b;

    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/a$b$a;->a:Landroidx/constraintlayout/motion/widget/a$b;

    iget-object v3, v2, Landroidx/constraintlayout/motion/widget/a$b;->j:Landroidx/constraintlayout/motion/widget/a;

    invoke-direct {v0, v3, v2}, Landroidx/constraintlayout/motion/widget/a$b;-><init>(Landroidx/constraintlayout/motion/widget/a;Landroidx/constraintlayout/motion/widget/a$b;)V

    iput p1, v0, Landroidx/constraintlayout/motion/widget/a$b;->d:I

    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/a$b$a;->a:Landroidx/constraintlayout/motion/widget/a$b;

    iget p1, p1, Landroidx/constraintlayout/motion/widget/a$b;->c:I

    iput p1, v0, Landroidx/constraintlayout/motion/widget/a$b;->c:I

    invoke-virtual {v1, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setTransition(Landroidx/constraintlayout/motion/widget/a$b;)V

    invoke-virtual {v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->i()V

    return-void

    :cond_36
    iget-object v0, v0, Landroidx/constraintlayout/motion/widget/a;->c:Landroidx/constraintlayout/motion/widget/a$b;

    iget v2, p0, Landroidx/constraintlayout/motion/widget/a$b$a;->c:I

    and-int/lit8 v4, v2, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-nez v4, :cond_47

    and-int/lit16 v4, v2, 0x100

    if-eqz v4, :cond_45

    goto :goto_47

    :cond_45
    move v4, v5

    goto :goto_48

    :cond_47
    :goto_47
    move v4, v6

    :goto_48
    and-int/lit8 v7, v2, 0x10

    if-nez v7, :cond_53

    and-int/lit16 v2, v2, 0x1000

    if-eqz v2, :cond_51

    goto :goto_53

    :cond_51
    move v2, v5

    goto :goto_54

    :cond_53
    :goto_53
    move v2, v6

    :goto_54
    if-eqz v4, :cond_5a

    if-eqz v2, :cond_5a

    move v7, v6

    goto :goto_5b

    :cond_5a
    move v7, v5

    :goto_5b
    if-eqz v7, :cond_7a

    if-eq v0, p1, :cond_62

    invoke-virtual {v1, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setTransition(Landroidx/constraintlayout/motion/widget/a$b;)V

    :cond_62
    invoke-virtual {v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getCurrentState()I

    move-result p1

    invoke-virtual {v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getEndState()I

    move-result v7

    if-eq p1, v7, :cond_79

    invoke-virtual {v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getProgress()F

    move-result p1

    const/high16 v7, 0x3f000000  # 0.5f

    cmpl-float p1, p1, v7

    if-lez p1, :cond_77

    goto :goto_79

    :cond_77
    move v2, v5

    goto :goto_7a

    :cond_79
    :goto_79
    move v4, v5

    :cond_7a
    :goto_7a
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/a$b$a;->a:Landroidx/constraintlayout/motion/widget/a$b;

    if-ne p1, v0, :cond_7f

    goto :goto_89

    :cond_7f
    iget v0, p1, Landroidx/constraintlayout/motion/widget/a$b;->c:I

    iget v7, p1, Landroidx/constraintlayout/motion/widget/a$b;->d:I

    if-ne v7, v3, :cond_8b

    iget v3, v1, Landroidx/constraintlayout/motion/widget/MotionLayout;->e:I

    if-eq v3, v0, :cond_92

    :cond_89
    :goto_89
    move v5, v6

    goto :goto_92

    :cond_8b
    iget v3, v1, Landroidx/constraintlayout/motion/widget/MotionLayout;->e:I

    if-eq v3, v7, :cond_89

    if-ne v3, v0, :cond_92

    goto :goto_89

    :cond_92
    :goto_92
    if-eqz v5, :cond_d1

    if-eqz v4, :cond_a2

    iget v0, p0, Landroidx/constraintlayout/motion/widget/a$b$a;->c:I

    and-int/2addr v0, v6

    if-eqz v0, :cond_a2

    invoke-virtual {v1, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setTransition(Landroidx/constraintlayout/motion/widget/a$b;)V

    invoke-virtual {v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->i()V

    goto :goto_d1

    :cond_a2
    const/4 v0, 0x0

    if-eqz v2, :cond_b2

    iget v3, p0, Landroidx/constraintlayout/motion/widget/a$b$a;->c:I

    and-int/lit8 v3, v3, 0x10

    if-eqz v3, :cond_b2

    invoke-virtual {v1, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setTransition(Landroidx/constraintlayout/motion/widget/a$b;)V

    invoke-virtual {v1, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->a(F)V

    goto :goto_d1

    :cond_b2
    if-eqz v4, :cond_c3

    iget v3, p0, Landroidx/constraintlayout/motion/widget/a$b$a;->c:I

    and-int/lit16 v3, v3, 0x100

    if-eqz v3, :cond_c3

    invoke-virtual {v1, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setTransition(Landroidx/constraintlayout/motion/widget/a$b;)V

    const/high16 p1, 0x3f800000  # 1.0f

    invoke-virtual {v1, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setProgress(F)V

    goto :goto_d1

    :cond_c3
    if-eqz v2, :cond_d1

    iget v2, p0, Landroidx/constraintlayout/motion/widget/a$b$a;->c:I

    and-int/lit16 v2, v2, 0x1000

    if-eqz v2, :cond_d1

    invoke-virtual {v1, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setTransition(Landroidx/constraintlayout/motion/widget/a$b;)V

    invoke-virtual {v1, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setProgress(F)V

    :cond_d1
    :goto_d1
    return-void
.end method
