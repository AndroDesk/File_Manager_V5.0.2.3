.class Lcom/android/fileexplorer/filemanager/StorageVolumeUtil$2;
.super Ljava/lang/Object;
.source "StorageVolumeUtil.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/filemanager/StorageVolumeUtil;->requestDocumentTreePermission(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/filemanager/StorageVolumeUtil$2;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    iget-object p1, p0, Lcom/android/fileexplorer/filemanager/StorageVolumeUtil$2;->val$activity:Landroid/app/Activity;

    invoke-static {p1}, Lcom/android/fileexplorer/filemanager/StorageVolumeUtil;->access$000(Landroid/app/Activity;)V

    return-void
.end method
