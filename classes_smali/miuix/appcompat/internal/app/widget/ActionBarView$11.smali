.class Lmiuix/appcompat/internal/app/widget/ActionBarView$11;
.super Ljava/lang/Object;
.source "ActionBarView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/appcompat/internal/app/widget/ActionBarView;->makeMenuViewShowHideWithAnimation(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lmiuix/appcompat/internal/app/widget/ActionBarView;

.field public final synthetic val$animateToVisible:Z


# direct methods
.method public constructor <init>(Lmiuix/appcompat/internal/app/widget/ActionBarView;Z)V
    .registers 3

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$11;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 3
    iput-boolean p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$11;->val$animateToVisible:Z

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$11;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 3
    iget-boolean v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$11;->val$animateToVisible:Z

    .line 5
    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->makeMenuViewShowHide(Z)V

    .line 8
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$11;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 10
    iget-object v0, v0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    .line 12
    if-eqz v0, :cond_11

    .line 14
    const/4 v1, 0x0

    .line 15
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 18
    :cond_11
    return-void
.end method
