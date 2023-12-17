.class Lmiuix/appcompat/app/ActionBarDelegateImpl$1;
.super Landroidx/activity/h;
.source "ActionBarDelegateImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/appcompat/app/ActionBarDelegateImpl;->updateOnBackPressedCallbackState(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lmiuix/appcompat/app/ActionBarDelegateImpl;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lmiuix/appcompat/app/ActionBarDelegateImpl;Z)V
    .registers 3

    iput-object p1, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl$1;->this$0:Lmiuix/appcompat/app/ActionBarDelegateImpl;

    invoke-direct {p0, p2}, Landroidx/activity/h;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public handleOnBackPressed()V
    .registers 2

    iget-object v0, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl$1;->this$0:Lmiuix/appcompat/app/ActionBarDelegateImpl;

    iget-object v0, v0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    :cond_9
    return-void
.end method
