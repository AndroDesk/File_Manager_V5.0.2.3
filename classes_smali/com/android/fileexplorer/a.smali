.class public final synthetic Lcom/android/fileexplorer/a;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ll2/d;


# instance fields
.field public final synthetic a:Lcom/android/fileexplorer/FileExplorerTabActivity;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/fileexplorer/FileExplorerTabActivity;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/fileexplorer/a;->a:Lcom/android/fileexplorer/FileExplorerTabActivity;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/a;->a:Lcom/android/fileexplorer/FileExplorerTabActivity;

    check-cast p1, Ljava/util/List;

    invoke-static {v0, p1}, Lcom/android/fileexplorer/FileExplorerTabActivity;->h(Lcom/android/fileexplorer/FileExplorerTabActivity;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
