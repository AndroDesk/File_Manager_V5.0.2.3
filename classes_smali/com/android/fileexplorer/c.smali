.class public final synthetic Lcom/android/fileexplorer/c;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/android/fileexplorer/FileExplorerTabBaseActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/android/fileexplorer/FileExplorerTabBaseActivity;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/fileexplorer/c;->a:Lcom/android/fileexplorer/FileExplorerTabBaseActivity;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/c;->a:Lcom/android/fileexplorer/FileExplorerTabBaseActivity;

    invoke-static {v0}, Lcom/android/fileexplorer/FileExplorerTabBaseActivity;->g(Lcom/android/fileexplorer/FileExplorerTabBaseActivity;)V

    return-void
.end method
