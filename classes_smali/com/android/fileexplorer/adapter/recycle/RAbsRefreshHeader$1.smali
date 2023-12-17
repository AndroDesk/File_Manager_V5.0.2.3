.class Lcom/android/fileexplorer/adapter/recycle/RAbsRefreshHeader$1;
.super Ljava/lang/Object;
.source "RAbsRefreshHeader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/adapter/recycle/RAbsRefreshHeader;->setState(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/adapter/recycle/RAbsRefreshHeader;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/adapter/recycle/RAbsRefreshHeader;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/RAbsRefreshHeader$1;->this$0:Lcom/android/fileexplorer/adapter/recycle/RAbsRefreshHeader;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1
    const-string v0, "RAbsRefreshHeader"

    .line 3
    const-string v1, "run: RXmasHeader smoothScrollTo"

    .line 5
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/RAbsRefreshHeader$1;->this$0:Lcom/android/fileexplorer/adapter/recycle/RAbsRefreshHeader;

    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/adapter/recycle/RAbsRefreshHeader;->smoothScrollTo(I)V

    .line 14
    return-void
.end method
