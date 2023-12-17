.class Lcom/android/fileexplorer/activity/StorageInfoActivity$1;
.super Ljava/lang/Object;
.source "StorageInfoActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/activity/StorageInfoActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/activity/StorageInfoActivity;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/activity/StorageInfoActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/activity/StorageInfoActivity$1;->this$0:Lcom/android/fileexplorer/activity/StorageInfoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    iget-object p1, p0, Lcom/android/fileexplorer/activity/StorageInfoActivity$1;->this$0:Lcom/android/fileexplorer/activity/StorageInfoActivity;

    const-string v0, "00003"

    invoke-static {p1, v0}, Lcom/android/fileexplorer/model/Util;->enterClean(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method
