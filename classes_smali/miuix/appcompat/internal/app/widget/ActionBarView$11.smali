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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lmiuix/appcompat/internal/app/widget/ActionBarView;Z)V
    .registers 3

    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$11;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    iput-boolean p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$11;->val$animateToVisible:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$11;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    iget-boolean v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$11;->val$animateToVisible:Z

    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->makeMenuViewShowHide(Z)V

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$11;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    iget-object v0, v0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    if-eqz v0, :cond_11

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_11
    return-void
.end method
