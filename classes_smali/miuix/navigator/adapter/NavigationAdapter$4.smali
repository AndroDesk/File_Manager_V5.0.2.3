.class Lmiuix/navigator/adapter/NavigationAdapter$4;
.super Ljava/lang/Object;
.source "NavigationAdapter.java"

# interfaces
.implements Lmiuix/navigator/NavigatorFragmentListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/navigator/adapter/NavigationAdapter;-><init>(Lmiuix/navigator/Navigator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lmiuix/navigator/adapter/NavigationAdapter;


# direct methods
.method public constructor <init>(Lmiuix/navigator/adapter/NavigationAdapter;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/navigator/adapter/NavigationAdapter$4;->this$0:Lmiuix/navigator/adapter/NavigationAdapter;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onNavigationVisibilityChanged(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/navigator/adapter/NavigationAdapter$4;->this$0:Lmiuix/navigator/adapter/NavigationAdapter;

    .line 3
    invoke-static {v0}, Lmiuix/navigator/adapter/NavigationAdapter;->access$300(Lmiuix/navigator/adapter/NavigationAdapter;)Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_23

    .line 9
    and-int/lit8 p1, p1, 0x3

    .line 11
    if-nez p1, :cond_23

    .line 13
    iget-object p1, p0, Lmiuix/navigator/adapter/NavigationAdapter$4;->this$0:Lmiuix/navigator/adapter/NavigationAdapter;

    .line 15
    invoke-static {p1}, Lmiuix/navigator/adapter/NavigationAdapter;->access$000(Lmiuix/navigator/adapter/NavigationAdapter;)Lmiuix/navigator/adapter/CategoryAdapter;

    .line 18
    move-result-object p1

    .line 19
    iget-object v0, p0, Lmiuix/navigator/adapter/NavigationAdapter$4;->this$0:Lmiuix/navigator/adapter/NavigationAdapter;

    .line 21
    invoke-static {v0}, Lmiuix/navigator/adapter/NavigationAdapter;->access$000(Lmiuix/navigator/adapter/NavigationAdapter;)Lmiuix/navigator/adapter/CategoryAdapter;

    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0}, Lmiuix/navigator/adapter/CategoryAdapter;->getEditConfig()Lmiuix/navigator/adapter/CategoryAdapter$EditConfig;

    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {v0}, Lmiuix/navigator/adapter/CategoryAdapter$EditConfig;->multiChoiceMode()Z

    .line 32
    move-result v0

    .line 33
    invoke-virtual {p1, v0}, Lmiuix/navigator/adapter/CategoryAdapter;->finishEdit(Z)V

    .line 36
    :cond_23
    return-void
.end method
