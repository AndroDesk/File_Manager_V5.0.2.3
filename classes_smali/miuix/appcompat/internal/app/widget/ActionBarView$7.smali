.class Lmiuix/appcompat/internal/app/widget/ActionBarView$7;
.super Ljava/lang/Object;
.source "ActionBarView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/appcompat/internal/app/widget/ActionBarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lmiuix/appcompat/internal/app/widget/ActionBarView;


# direct methods
.method public constructor <init>(Lmiuix/appcompat/internal/app/widget/ActionBarView;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$7;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .line 1
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$7;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 3
    iget-object v0, p1, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mWindowCallback:Landroid/view/Window$Callback;

    .line 5
    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->access$600(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Lmiuix/appcompat/internal/view/menu/action/ActionMenuItem;

    .line 8
    move-result-object p1

    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-interface {v0, v1, p1}, Landroid/view/Window$Callback;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    .line 13
    return-void
.end method
