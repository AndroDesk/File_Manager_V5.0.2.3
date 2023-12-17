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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lmiuix/navigator/adapter/NavigationAdapter;)V
    .registers 2

    iput-object p1, p0, Lmiuix/navigator/adapter/NavigationAdapter$4;->this$0:Lmiuix/navigator/adapter/NavigationAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNavigationVisibilityChanged(I)V
    .registers 3

    iget-object v0, p0, Lmiuix/navigator/adapter/NavigationAdapter$4;->this$0:Lmiuix/navigator/adapter/NavigationAdapter;

    invoke-static {v0}, Lmiuix/navigator/adapter/NavigationAdapter;->access$300(Lmiuix/navigator/adapter/NavigationAdapter;)Z

    move-result v0

    if-eqz v0, :cond_23

    and-int/lit8 p1, p1, 0x3

    if-nez p1, :cond_23

    iget-object p1, p0, Lmiuix/navigator/adapter/NavigationAdapter$4;->this$0:Lmiuix/navigator/adapter/NavigationAdapter;

    invoke-static {p1}, Lmiuix/navigator/adapter/NavigationAdapter;->access$000(Lmiuix/navigator/adapter/NavigationAdapter;)Lmiuix/navigator/adapter/CategoryAdapter;

    move-result-object p1

    iget-object v0, p0, Lmiuix/navigator/adapter/NavigationAdapter$4;->this$0:Lmiuix/navigator/adapter/NavigationAdapter;

    invoke-static {v0}, Lmiuix/navigator/adapter/NavigationAdapter;->access$000(Lmiuix/navigator/adapter/NavigationAdapter;)Lmiuix/navigator/adapter/CategoryAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/navigator/adapter/CategoryAdapter;->getEditConfig()Lmiuix/navigator/adapter/CategoryAdapter$EditConfig;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/navigator/adapter/CategoryAdapter$EditConfig;->multiChoiceMode()Z

    move-result v0

    invoke-virtual {p1, v0}, Lmiuix/navigator/adapter/CategoryAdapter;->finishEdit(Z)V

    :cond_23
    return-void
.end method
