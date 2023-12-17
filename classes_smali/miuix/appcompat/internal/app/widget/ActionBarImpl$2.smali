.class Lmiuix/appcompat/internal/app/widget/ActionBarImpl$2;
.super Ljava/lang/Object;
.source "ActionBarImpl.java"

# interfaces
.implements Lmiuix/appcompat/internal/view/ActionModeImpl$ActionModeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/appcompat/internal/app/widget/ActionBarImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lmiuix/appcompat/internal/app/widget/ActionBarImpl;


# direct methods
.method public constructor <init>(Lmiuix/appcompat/internal/app/widget/ActionBarImpl;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$2;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarImpl;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onActionModeFinish(Landroid/view/ActionMode;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$2;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarImpl;

    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->animateToMode(Z)V

    .line 7
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$2;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarImpl;

    .line 9
    const/4 v0, 0x0

    .line 10
    iput-object v0, p1, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mActionMode:Landroid/view/ActionMode;

    .line 12
    return-void
.end method
