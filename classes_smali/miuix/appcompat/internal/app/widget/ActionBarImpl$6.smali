.class Lmiuix/appcompat/internal/app/widget/ActionBarImpl$6;
.super Ljava/lang/Object;
.source "ActionBarImpl.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->createSearchActionModeView()Lmiuix/appcompat/internal/app/widget/SearchActionModeView;
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
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$6;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarImpl;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 1
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$6;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarImpl;

    .line 3
    iget-object p1, p1, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mActionMode:Landroid/view/ActionMode;

    .line 5
    if-eqz p1, :cond_9

    .line 7
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    .line 10
    :cond_9
    return-void
.end method
