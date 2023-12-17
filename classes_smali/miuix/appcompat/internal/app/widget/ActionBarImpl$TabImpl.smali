.class public Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;
.super Landroidx/appcompat/app/a$d;
.source "ActionBarImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/appcompat/internal/app/widget/ActionBarImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TabImpl"
.end annotation


# instance fields
.field private mCallback:Landroidx/appcompat/app/a$e;

.field private mContentDesc:Ljava/lang/CharSequence;

.field private mCustomView:Landroid/view/View;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mInternalCallback:Landroidx/appcompat/app/a$e;

.field private mPosition:I

.field private mTag:Ljava/lang/Object;

.field private mText:Ljava/lang/CharSequence;

.field public mWithAnim:Z

.field public final synthetic this$0:Lmiuix/appcompat/internal/app/widget/ActionBarImpl;


# direct methods
.method public constructor <init>(Lmiuix/appcompat/internal/app/widget/ActionBarImpl;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarImpl;

    .line 3
    invoke-direct {p0}, Landroidx/appcompat/app/a$d;-><init>()V

    .line 6
    const/4 p1, -0x1

    .line 7
    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;->mPosition:I

    .line 9
    const/4 p1, 0x1

    .line 10
    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;->mWithAnim:Z

    .line 12
    return-void
.end method

.method public static synthetic access$000(Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;)Landroidx/appcompat/app/a$e;
    .registers 1

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;->mInternalCallback:Landroidx/appcompat/app/a$e;

    .line 3
    return-object p0
.end method

.method public static synthetic access$100(Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;)Landroidx/appcompat/app/a$e;
    .registers 1

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;->mCallback:Landroidx/appcompat/app/a$e;

    .line 3
    return-object p0
.end method


# virtual methods
.method public getCallback()Landroidx/appcompat/app/a$e;
    .registers 2

    .line 1
    invoke-static {}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->access$1500()Landroidx/appcompat/app/a$e;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public getContentDescription()Ljava/lang/CharSequence;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;->mContentDesc:Ljava/lang/CharSequence;

    .line 3
    return-object v0
.end method

.method public getCustomView()Landroid/view/View;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;->mCustomView:Landroid/view/View;

    .line 3
    return-object v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 3
    return-object v0
.end method

.method public getPosition()I
    .registers 2

    .line 1
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;->mPosition:I

    .line 3
    return v0
.end method

.method public getTag()Ljava/lang/Object;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;->mTag:Ljava/lang/Object;

    .line 3
    return-object v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;->mText:Ljava/lang/CharSequence;

    .line 3
    return-object v0
.end method

.method public select()V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarImpl;

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, p0, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->selectTab(Landroidx/appcompat/app/a$d;Z)V

    .line 7
    return-void
.end method

.method public setContentDescription(I)Landroidx/appcompat/app/a$d;
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarImpl;

    .line 2
    invoke-static {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->access$2000(Lmiuix/appcompat/internal/app/widget/ActionBarImpl;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    .line 3
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;->setContentDescription(Ljava/lang/CharSequence;)Landroidx/appcompat/app/a$d;

    move-result-object p1

    return-object p1
.end method

.method public setContentDescription(Ljava/lang/CharSequence;)Landroidx/appcompat/app/a$d;
    .registers 3

    .line 4
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;->mContentDesc:Ljava/lang/CharSequence;

    .line 5
    iget p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;->mPosition:I

    if-ltz p1, :cond_32

    .line 6
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarImpl;

    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->access$1600(Lmiuix/appcompat/internal/app/widget/ActionBarImpl;)Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    move-result-object p1

    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;->mPosition:I

    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->updateTab(I)V

    .line 7
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarImpl;

    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->access$1700(Lmiuix/appcompat/internal/app/widget/ActionBarImpl;)Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    move-result-object p1

    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;->mPosition:I

    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->updateTab(I)V

    .line 8
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarImpl;

    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->access$1800(Lmiuix/appcompat/internal/app/widget/ActionBarImpl;)Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView;

    move-result-object p1

    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;->mPosition:I

    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView;->updateTab(I)V

    .line 9
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarImpl;

    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->access$1900(Lmiuix/appcompat/internal/app/widget/ActionBarImpl;)Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView;

    move-result-object p1

    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;->mPosition:I

    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView;->updateTab(I)V

    :cond_32
    return-object p0
.end method

.method public setCustomView(I)Landroidx/appcompat/app/a$d;
    .registers 4

    .line 7
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarImpl;

    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->getThemedContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    .line 8
    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 9
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;->setCustomView(Landroid/view/View;)Landroidx/appcompat/app/a$d;

    move-result-object p1

    return-object p1
.end method

.method public setCustomView(Landroid/view/View;)Landroidx/appcompat/app/a$d;
    .registers 3

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;->mCustomView:Landroid/view/View;

    .line 2
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarImpl;

    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->access$500(Lmiuix/appcompat/internal/app/widget/ActionBarImpl;)Lmiuix/appcompat/internal/app/widget/ActionBarView;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->isUserSetExpandState()Z

    move-result p1

    if-nez p1, :cond_1d

    .line 3
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarImpl;

    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->access$500(Lmiuix/appcompat/internal/app/widget/ActionBarImpl;)Lmiuix/appcompat/internal/app/widget/ActionBarView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setExpandState(I)V

    .line 4
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarImpl;

    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->setResizable(Z)V

    .line 5
    :cond_1d
    iget p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;->mPosition:I

    if-ltz p1, :cond_2c

    .line 6
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarImpl;

    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->access$1600(Lmiuix/appcompat/internal/app/widget/ActionBarImpl;)Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    move-result-object p1

    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;->mPosition:I

    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->updateTab(I)V

    :cond_2c
    return-object p0
.end method

.method public setIcon(I)Landroidx/appcompat/app/a$d;
    .registers 3

    .line 7
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarImpl;

    invoke-static {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->access$2000(Lmiuix/appcompat/internal/app/widget/ActionBarImpl;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;->setIcon(Landroid/graphics/drawable/Drawable;)Landroidx/appcompat/app/a$d;

    move-result-object p1

    return-object p1
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Landroidx/appcompat/app/a$d;
    .registers 3

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 2
    iget p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;->mPosition:I

    if-ltz p1, :cond_32

    .line 3
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarImpl;

    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->access$1600(Lmiuix/appcompat/internal/app/widget/ActionBarImpl;)Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    move-result-object p1

    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;->mPosition:I

    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->updateTab(I)V

    .line 4
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarImpl;

    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->access$1700(Lmiuix/appcompat/internal/app/widget/ActionBarImpl;)Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    move-result-object p1

    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;->mPosition:I

    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->updateTab(I)V

    .line 5
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarImpl;

    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->access$1800(Lmiuix/appcompat/internal/app/widget/ActionBarImpl;)Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView;

    move-result-object p1

    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;->mPosition:I

    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView;->updateTab(I)V

    .line 6
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarImpl;

    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->access$1900(Lmiuix/appcompat/internal/app/widget/ActionBarImpl;)Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView;

    move-result-object p1

    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;->mPosition:I

    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView;->updateTab(I)V

    :cond_32
    return-object p0
.end method

.method public setInternalTabListener(Landroidx/appcompat/app/a$e;)Landroidx/appcompat/app/a$d;
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;->mInternalCallback:Landroidx/appcompat/app/a$e;

    .line 3
    return-object p0
.end method

.method public setPosition(I)V
    .registers 2

    .line 1
    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;->mPosition:I

    .line 3
    return-void
.end method

.method public setTabListener(Landroidx/appcompat/app/a$e;)Landroidx/appcompat/app/a$d;
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;->mCallback:Landroidx/appcompat/app/a$e;

    .line 3
    return-object p0
.end method

.method public setTag(Ljava/lang/Object;)Landroidx/appcompat/app/a$d;
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;->mTag:Ljava/lang/Object;

    .line 3
    return-object p0
.end method

.method public setText(I)Landroidx/appcompat/app/a$d;
    .registers 3

    .line 7
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarImpl;

    invoke-static {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->access$2000(Lmiuix/appcompat/internal/app/widget/ActionBarImpl;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;->setText(Ljava/lang/CharSequence;)Landroidx/appcompat/app/a$d;

    move-result-object p1

    return-object p1
.end method

.method public setText(Ljava/lang/CharSequence;)Landroidx/appcompat/app/a$d;
    .registers 3

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;->mText:Ljava/lang/CharSequence;

    .line 2
    iget p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;->mPosition:I

    if-ltz p1, :cond_32

    .line 3
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarImpl;

    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->access$1600(Lmiuix/appcompat/internal/app/widget/ActionBarImpl;)Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    move-result-object p1

    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;->mPosition:I

    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->updateTab(I)V

    .line 4
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarImpl;

    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->access$1700(Lmiuix/appcompat/internal/app/widget/ActionBarImpl;)Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    move-result-object p1

    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;->mPosition:I

    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->updateTab(I)V

    .line 5
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarImpl;

    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->access$1800(Lmiuix/appcompat/internal/app/widget/ActionBarImpl;)Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView;

    move-result-object p1

    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;->mPosition:I

    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView;->updateTab(I)V

    .line 6
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarImpl;

    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->access$1800(Lmiuix/appcompat/internal/app/widget/ActionBarImpl;)Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView;

    move-result-object p1

    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;->mPosition:I

    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView;->updateTab(I)V

    :cond_32
    return-object p0
.end method
