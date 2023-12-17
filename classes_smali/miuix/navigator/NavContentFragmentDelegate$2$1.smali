.class Lmiuix/navigator/NavContentFragmentDelegate$2$1;
.super Ljava/lang/Object;
.source "NavContentFragmentDelegate.java"

# interfaces
.implements Lmiuix/view/ActionModeAnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/navigator/NavContentFragmentDelegate$2;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lmiuix/navigator/NavContentFragmentDelegate$2;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lmiuix/navigator/NavContentFragmentDelegate$2;)V
    .registers 2

    iput-object p1, p0, Lmiuix/navigator/NavContentFragmentDelegate$2$1;->this$1:Lmiuix/navigator/NavContentFragmentDelegate$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStop(Z)V
    .registers 3

    if-nez p1, :cond_a

    iget-object p1, p0, Lmiuix/navigator/NavContentFragmentDelegate$2$1;->this$1:Lmiuix/navigator/NavContentFragmentDelegate$2;

    iget-object p1, p1, Lmiuix/navigator/NavContentFragmentDelegate$2;->this$0:Lmiuix/navigator/NavContentFragmentDelegate;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lmiuix/navigator/NavContentFragmentDelegate;->access$002(Lmiuix/navigator/NavContentFragmentDelegate;Z)Z

    :cond_a
    return-void
.end method
