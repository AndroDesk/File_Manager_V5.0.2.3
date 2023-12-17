.class Lcom/android/fileexplorer/util/AppUtils$1;
.super Ljava/lang/Object;
.source "AppUtils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/util/AppUtils;->showPermissionRequiredDialog(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/util/AppUtils$1;->val$activity:Landroid/app/Activity;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 1
    iget-object p1, p0, Lcom/android/fileexplorer/util/AppUtils$1;->val$activity:Landroid/app/Activity;

    .line 3
    if-nez p1, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    sget-boolean p2, Lcom/android/fileexplorer/model/Config;->IS_GLOBAL:Z

    .line 8
    if-eqz p2, :cond_d

    .line 10
    invoke-static {p1}, Lcom/android/fileexplorer/util/AppUtils;->gotoAppDetail(Landroid/content/Context;)V

    .line 13
    goto :goto_10

    .line 14
    :cond_d
    invoke-static {p1}, Lcom/android/fileexplorer/util/PermissionUtils;->startNewAppPermsManager(Landroid/content/Context;)V

    .line 17
    :goto_10
    return-void
.end method
