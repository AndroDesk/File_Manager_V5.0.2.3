.class Lcom/android/fileexplorer/adapter/ViewLargeAdapter$3$2;
.super Ljava/lang/Object;
.source "ViewLargeAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/adapter/ViewLargeAdapter$3;->onPostExecute(Landroid/util/Pair;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/android/fileexplorer/adapter/ViewLargeAdapter$3;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/adapter/ViewLargeAdapter$3;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/adapter/ViewLargeAdapter$3$2;->this$1:Lcom/android/fileexplorer/adapter/ViewLargeAdapter$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/ViewLargeAdapter$3$2;->this$1:Lcom/android/fileexplorer/adapter/ViewLargeAdapter$3;

    iget-object v0, v0, Lcom/android/fileexplorer/adapter/ViewLargeAdapter$3;->this$0:Lcom/android/fileexplorer/adapter/ViewLargeAdapter;

    invoke-static {v0}, Lcom/android/fileexplorer/adapter/ViewLargeAdapter;->access$200(Lcom/android/fileexplorer/adapter/ViewLargeAdapter;)Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/fileexplorer/model/Util;->showSpaceNotEnoughDialog(Landroid/app/Activity;)V

    return-void
.end method
