.class public final synthetic Lcom/android/fileexplorer/b;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ll2/c;


# instance fields
.field public final synthetic a:Lcom/android/fileexplorer/FileExplorerTabActivity;

.field public final synthetic b:Lmiuix/navigator/Navigator;


# direct methods
.method public synthetic constructor <init>(Lcom/android/fileexplorer/FileExplorerTabActivity;Lmiuix/navigator/Navigator;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/fileexplorer/b;->a:Lcom/android/fileexplorer/FileExplorerTabActivity;

    iput-object p2, p0, Lcom/android/fileexplorer/b;->b:Lmiuix/navigator/Navigator;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 4

    iget-object v0, p0, Lcom/android/fileexplorer/b;->a:Lcom/android/fileexplorer/FileExplorerTabActivity;

    iget-object v1, p0, Lcom/android/fileexplorer/b;->b:Lmiuix/navigator/Navigator;

    check-cast p1, Ljava/util/List;

    invoke-static {v0, v1, p1}, Lcom/android/fileexplorer/FileExplorerTabActivity;->i(Lcom/android/fileexplorer/FileExplorerTabActivity;Lmiuix/navigator/Navigator;Ljava/util/List;)V

    return-void
.end method
