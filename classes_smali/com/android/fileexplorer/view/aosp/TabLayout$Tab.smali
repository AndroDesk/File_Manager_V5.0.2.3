.class public Lcom/android/fileexplorer/view/aosp/TabLayout$Tab;
.super Ljava/lang/Object;
.source "TabLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fileexplorer/view/aosp/TabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Tab"
.end annotation


# static fields
.field public static final INVALID_POSITION:I = -0x1


# instance fields
.field private contentDesc:Ljava/lang/CharSequence;

.field private customView:Landroid/view/View;

.field private icon:Landroid/graphics/drawable/Drawable;

.field private labelVisibilityMode:I
    .annotation build Lcom/android/fileexplorer/view/aosp/TabLayout$LabelVisibility;
    .end annotation
.end field

.field public parent:Lcom/android/fileexplorer/view/aosp/TabLayout;

.field private position:I

.field private tag:Ljava/lang/Object;

.field private text:Ljava/lang/CharSequence;

.field public view:Lcom/android/fileexplorer/view/aosp/TabLayout$TabView;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/android/fileexplorer/view/aosp/TabLayout$Tab;->position:I

    .line 7
    const/4 v0, 0x1

    .line 8
    iput v0, p0, Lcom/android/fileexplorer/view/aosp/TabLayout$Tab;->labelVisibilityMode:I

    .line 10
    return-void
.end method

.method public static synthetic access$100(Lcom/android/fileexplorer/view/aosp/TabLayout$Tab;)Ljava/lang/CharSequence;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/view/aosp/TabLayout$Tab;->contentDesc:Ljava/lang/CharSequence;

    .line 3
    return-object p0
.end method

.method public static synthetic access$1000(Lcom/android/fileexplorer/view/aosp/TabLayout$Tab;)I
    .registers 1

    .line 1
    iget p0, p0, Lcom/android/fileexplorer/view/aosp/TabLayout$Tab;->labelVisibilityMode:I

    .line 3
    return p0
.end method

.method public static synthetic access$200(Lcom/android/fileexplorer/view/aosp/TabLayout$Tab;)Ljava/lang/CharSequence;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/view/aosp/TabLayout$Tab;->text:Ljava/lang/CharSequence;

    .line 3
    return-object p0
.end method


# virtual methods
.method public getBadge()Lcom/google/android/material/badge/BadgeDrawable;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/aosp/TabLayout$Tab;->view:Lcom/android/fileexplorer/view/aosp/TabLayout$TabView;

    .line 3
    invoke-static {v0}, Lcom/android/fileexplorer/view/aosp/TabLayout$TabView;->access$800(Lcom/android/fileexplorer/view/aosp/TabLayout$TabView;)Lcom/google/android/material/badge/BadgeDrawable;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getContentDescription()Ljava/lang/CharSequence;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/aosp/TabLayout$Tab;->view:Lcom/android/fileexplorer/view/aosp/TabLayout$TabView;

    .line 3
    if-nez v0, :cond_6

    .line 5
    const/4 v0, 0x0

    .line 6
    goto :goto_a

    .line 7
    :cond_6
    invoke-virtual {v0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    .line 10
    move-result-object v0

    .line 11
    :goto_a
    return-object v0
.end method

.method public getCustomView()Landroid/view/View;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/aosp/TabLayout$Tab;->customView:Landroid/view/View;

    .line 3
    return-object v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/aosp/TabLayout$Tab;->icon:Landroid/graphics/drawable/Drawable;

    .line 3
    return-object v0
.end method

.method public getOrCreateBadge()Lcom/google/android/material/badge/BadgeDrawable;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/aosp/TabLayout$Tab;->view:Lcom/android/fileexplorer/view/aosp/TabLayout$TabView;

    .line 3
    invoke-static {v0}, Lcom/android/fileexplorer/view/aosp/TabLayout$TabView;->access$600(Lcom/android/fileexplorer/view/aosp/TabLayout$TabView;)Lcom/google/android/material/badge/BadgeDrawable;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getPosition()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/android/fileexplorer/view/aosp/TabLayout$Tab;->position:I

    .line 3
    return v0
.end method

.method public getTabLabelVisibility()I
    .registers 2
    .annotation build Lcom/android/fileexplorer/view/aosp/TabLayout$LabelVisibility;
    .end annotation

    .line 1
    iget v0, p0, Lcom/android/fileexplorer/view/aosp/TabLayout$Tab;->labelVisibilityMode:I

    .line 3
    return v0
.end method

.method public getTag()Ljava/lang/Object;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/aosp/TabLayout$Tab;->tag:Ljava/lang/Object;

    .line 3
    return-object v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/aosp/TabLayout$Tab;->text:Ljava/lang/CharSequence;

    .line 3
    return-object v0
.end method

.method public isSelected()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/aosp/TabLayout$Tab;->parent:Lcom/android/fileexplorer/view/aosp/TabLayout;

    .line 3
    if-eqz v0, :cond_10

    .line 5
    invoke-virtual {v0}, Lcom/android/fileexplorer/view/aosp/TabLayout;->getSelectedTabPosition()I

    .line 8
    move-result v0

    .line 9
    iget v1, p0, Lcom/android/fileexplorer/view/aosp/TabLayout$Tab;->position:I

    .line 11
    if-ne v0, v1, :cond_e

    .line 13
    const/4 v0, 0x1

    .line 14
    goto :goto_f

    .line 15
    :cond_e
    const/4 v0, 0x0

    .line 16
    :goto_f
    return v0

    .line 17
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 19
    const-string v1, "Tab not attached to a TabLayout"

    .line 21
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 24
    throw v0
.end method

.method public removeBadge()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/aosp/TabLayout$Tab;->view:Lcom/android/fileexplorer/view/aosp/TabLayout$TabView;

    .line 3
    invoke-static {v0}, Lcom/android/fileexplorer/view/aosp/TabLayout$TabView;->access$700(Lcom/android/fileexplorer/view/aosp/TabLayout$TabView;)V

    .line 6
    return-void
.end method

.method public reset()V
    .registers 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/android/fileexplorer/view/aosp/TabLayout$Tab;->parent:Lcom/android/fileexplorer/view/aosp/TabLayout;

    .line 4
    iput-object v0, p0, Lcom/android/fileexplorer/view/aosp/TabLayout$Tab;->view:Lcom/android/fileexplorer/view/aosp/TabLayout$TabView;

    .line 6
    iput-object v0, p0, Lcom/android/fileexplorer/view/aosp/TabLayout$Tab;->tag:Ljava/lang/Object;

    .line 8
    iput-object v0, p0, Lcom/android/fileexplorer/view/aosp/TabLayout$Tab;->icon:Landroid/graphics/drawable/Drawable;

    .line 10
    iput-object v0, p0, Lcom/android/fileexplorer/view/aosp/TabLayout$Tab;->text:Ljava/lang/CharSequence;

    .line 12
    iput-object v0, p0, Lcom/android/fileexplorer/view/aosp/TabLayout$Tab;->contentDesc:Ljava/lang/CharSequence;

    .line 14
    const/4 v1, -0x1

    .line 15
    iput v1, p0, Lcom/android/fileexplorer/view/aosp/TabLayout$Tab;->position:I

    .line 17
    iput-object v0, p0, Lcom/android/fileexplorer/view/aosp/TabLayout$Tab;->customView:Landroid/view/View;

    .line 19
    return-void
.end method

.method public select()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/aosp/TabLayout$Tab;->parent:Lcom/android/fileexplorer/view/aosp/TabLayout;

    .line 3
    if-eqz v0, :cond_8

    .line 5
    invoke-virtual {v0, p0}, Lcom/android/fileexplorer/view/aosp/TabLayout;->selectTab(Lcom/android/fileexplorer/view/aosp/TabLayout$Tab;)V

    .line 8
    return-void

    .line 9
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 11
    const-string v1, "Tab not attached to a TabLayout"

    .line 13
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 16
    throw v0
.end method

.method public setContentDescription(I)Lcom/android/fileexplorer/view/aosp/TabLayout$Tab;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/aosp/TabLayout$Tab;->parent:Lcom/android/fileexplorer/view/aosp/TabLayout;

    if-eqz v0, :cond_11

    .line 2
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/view/aosp/TabLayout$Tab;->setContentDescription(Ljava/lang/CharSequence;)Lcom/android/fileexplorer/view/aosp/TabLayout$Tab;

    move-result-object p1

    return-object p1

    .line 3
    :cond_11
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Tab not attached to a TabLayout"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setContentDescription(Ljava/lang/CharSequence;)Lcom/android/fileexplorer/view/aosp/TabLayout$Tab;
    .registers 2

    .line 4
    iput-object p1, p0, Lcom/android/fileexplorer/view/aosp/TabLayout$Tab;->contentDesc:Ljava/lang/CharSequence;

    .line 5
    invoke-virtual {p0}, Lcom/android/fileexplorer/view/aosp/TabLayout$Tab;->updateView()V

    return-object p0
.end method

.method public setCustomView(I)Lcom/android/fileexplorer/view/aosp/TabLayout$Tab;
    .registers 5

    .line 3
    iget-object v0, p0, Lcom/android/fileexplorer/view/aosp/TabLayout$Tab;->view:Lcom/android/fileexplorer/view/aosp/TabLayout$TabView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/android/fileexplorer/view/aosp/TabLayout$Tab;->view:Lcom/android/fileexplorer/view/aosp/TabLayout$TabView;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/view/aosp/TabLayout$Tab;->setCustomView(Landroid/view/View;)Lcom/android/fileexplorer/view/aosp/TabLayout$Tab;

    move-result-object p1

    return-object p1
.end method

.method public setCustomView(Landroid/view/View;)Lcom/android/fileexplorer/view/aosp/TabLayout$Tab;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/view/aosp/TabLayout$Tab;->customView:Landroid/view/View;

    .line 2
    invoke-virtual {p0}, Lcom/android/fileexplorer/view/aosp/TabLayout$Tab;->updateView()V

    return-object p0
.end method

.method public setIcon(I)Lcom/android/fileexplorer/view/aosp/TabLayout$Tab;
    .registers 3

    .line 9
    iget-object v0, p0, Lcom/android/fileexplorer/view/aosp/TabLayout$Tab;->parent:Lcom/android/fileexplorer/view/aosp/TabLayout;

    if-eqz v0, :cond_11

    .line 10
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Li/a;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/view/aosp/TabLayout$Tab;->setIcon(Landroid/graphics/drawable/Drawable;)Lcom/android/fileexplorer/view/aosp/TabLayout$Tab;

    move-result-object p1

    return-object p1

    .line 11
    :cond_11
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Tab not attached to a TabLayout"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Lcom/android/fileexplorer/view/aosp/TabLayout$Tab;
    .registers 5

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/view/aosp/TabLayout$Tab;->icon:Landroid/graphics/drawable/Drawable;

    .line 2
    iget-object p1, p0, Lcom/android/fileexplorer/view/aosp/TabLayout$Tab;->parent:Lcom/android/fileexplorer/view/aosp/TabLayout;

    iget v0, p1, Lcom/android/fileexplorer/view/aosp/TabLayout;->tabGravity:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_e

    iget v0, p1, Lcom/android/fileexplorer/view/aosp/TabLayout;->mode:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_11

    .line 3
    :cond_e
    invoke-virtual {p1, v1}, Lcom/android/fileexplorer/view/aosp/TabLayout;->updateTabViews(Z)V

    .line 4
    :cond_11
    invoke-virtual {p0}, Lcom/android/fileexplorer/view/aosp/TabLayout$Tab;->updateView()V

    .line 5
    sget-boolean p1, Lcom/google/android/material/badge/BadgeUtils;->USE_COMPAT_PARENT:Z

    if-eqz p1, :cond_31

    iget-object p1, p0, Lcom/android/fileexplorer/view/aosp/TabLayout$Tab;->view:Lcom/android/fileexplorer/view/aosp/TabLayout$TabView;

    .line 6
    invoke-static {p1}, Lcom/android/fileexplorer/view/aosp/TabLayout$TabView;->access$400(Lcom/android/fileexplorer/view/aosp/TabLayout$TabView;)Z

    move-result p1

    if-eqz p1, :cond_31

    iget-object p1, p0, Lcom/android/fileexplorer/view/aosp/TabLayout$Tab;->view:Lcom/android/fileexplorer/view/aosp/TabLayout$TabView;

    .line 7
    invoke-static {p1}, Lcom/android/fileexplorer/view/aosp/TabLayout$TabView;->access$500(Lcom/android/fileexplorer/view/aosp/TabLayout$TabView;)Lcom/google/android/material/badge/BadgeDrawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result p1

    if-eqz p1, :cond_31

    .line 8
    iget-object p1, p0, Lcom/android/fileexplorer/view/aosp/TabLayout$Tab;->view:Lcom/android/fileexplorer/view/aosp/TabLayout$TabView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_31
    return-object p0
.end method

.method public setPosition(I)V
    .registers 2

    .line 1
    iput p1, p0, Lcom/android/fileexplorer/view/aosp/TabLayout$Tab;->position:I

    .line 3
    return-void
.end method

.method public setTabLabelVisibility(I)Lcom/android/fileexplorer/view/aosp/TabLayout$Tab;
    .registers 5
    .param p1  # I
        .annotation build Lcom/android/fileexplorer/view/aosp/TabLayout$LabelVisibility;
        .end annotation
    .end param

    .line 1
    iput p1, p0, Lcom/android/fileexplorer/view/aosp/TabLayout$Tab;->labelVisibilityMode:I

    .line 3
    iget-object p1, p0, Lcom/android/fileexplorer/view/aosp/TabLayout$Tab;->parent:Lcom/android/fileexplorer/view/aosp/TabLayout;

    .line 5
    iget v0, p1, Lcom/android/fileexplorer/view/aosp/TabLayout;->tabGravity:I

    .line 7
    const/4 v1, 0x1

    .line 8
    if-eq v0, v1, :cond_e

    .line 10
    iget v0, p1, Lcom/android/fileexplorer/view/aosp/TabLayout;->mode:I

    .line 12
    const/4 v2, 0x2

    .line 13
    if-ne v0, v2, :cond_11

    .line 15
    :cond_e
    invoke-virtual {p1, v1}, Lcom/android/fileexplorer/view/aosp/TabLayout;->updateTabViews(Z)V

    .line 18
    :cond_11
    invoke-virtual {p0}, Lcom/android/fileexplorer/view/aosp/TabLayout$Tab;->updateView()V

    .line 21
    sget-boolean p1, Lcom/google/android/material/badge/BadgeUtils;->USE_COMPAT_PARENT:Z

    .line 23
    if-eqz p1, :cond_31

    .line 25
    iget-object p1, p0, Lcom/android/fileexplorer/view/aosp/TabLayout$Tab;->view:Lcom/android/fileexplorer/view/aosp/TabLayout$TabView;

    .line 27
    invoke-static {p1}, Lcom/android/fileexplorer/view/aosp/TabLayout$TabView;->access$400(Lcom/android/fileexplorer/view/aosp/TabLayout$TabView;)Z

    .line 30
    move-result p1

    .line 31
    if-eqz p1, :cond_31

    .line 33
    iget-object p1, p0, Lcom/android/fileexplorer/view/aosp/TabLayout$Tab;->view:Lcom/android/fileexplorer/view/aosp/TabLayout$TabView;

    .line 35
    invoke-static {p1}, Lcom/android/fileexplorer/view/aosp/TabLayout$TabView;->access$500(Lcom/android/fileexplorer/view/aosp/TabLayout$TabView;)Lcom/google/android/material/badge/BadgeDrawable;

    .line 38
    move-result-object p1

    .line 39
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    .line 42
    move-result p1

    .line 43
    if-eqz p1, :cond_31

    .line 45
    iget-object p1, p0, Lcom/android/fileexplorer/view/aosp/TabLayout$Tab;->view:Lcom/android/fileexplorer/view/aosp/TabLayout$TabView;

    .line 47
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 50
    :cond_31
    return-object p0
.end method

.method public setTag(Ljava/lang/Object;)Lcom/android/fileexplorer/view/aosp/TabLayout$Tab;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/view/aosp/TabLayout$Tab;->tag:Ljava/lang/Object;

    .line 3
    return-object p0
.end method

.method public setText(I)Lcom/android/fileexplorer/view/aosp/TabLayout$Tab;
    .registers 3

    .line 5
    iget-object v0, p0, Lcom/android/fileexplorer/view/aosp/TabLayout$Tab;->parent:Lcom/android/fileexplorer/view/aosp/TabLayout;

    if-eqz v0, :cond_11

    .line 6
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/view/aosp/TabLayout$Tab;->setText(Ljava/lang/CharSequence;)Lcom/android/fileexplorer/view/aosp/TabLayout$Tab;

    move-result-object p1

    return-object p1

    .line 7
    :cond_11
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Tab not attached to a TabLayout"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setText(Ljava/lang/CharSequence;)Lcom/android/fileexplorer/view/aosp/TabLayout$Tab;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/aosp/TabLayout$Tab;->contentDesc:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 2
    iget-object v0, p0, Lcom/android/fileexplorer/view/aosp/TabLayout$Tab;->view:Lcom/android/fileexplorer/view/aosp/TabLayout$TabView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 3
    :cond_13
    iput-object p1, p0, Lcom/android/fileexplorer/view/aosp/TabLayout$Tab;->text:Ljava/lang/CharSequence;

    .line 4
    invoke-virtual {p0}, Lcom/android/fileexplorer/view/aosp/TabLayout$Tab;->updateView()V

    return-object p0
.end method

.method public updateView()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/aosp/TabLayout$Tab;->view:Lcom/android/fileexplorer/view/aosp/TabLayout$TabView;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-virtual {v0}, Lcom/android/fileexplorer/view/aosp/TabLayout$TabView;->update()V

    .line 8
    :cond_7
    return-void
.end method
