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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/util/AppUtils$1;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    iget-object p1, p0, Lcom/android/fileexplorer/util/AppUtils$1;->val$activity:Landroid/app/Activity;

    if-nez p1, :cond_5

    return-void

    :cond_5
    sget-boolean p2, Lcom/android/fileexplorer/model/Config;->IS_GLOBAL:Z

    if-eqz p2, :cond_d

    invoke-static {p1}, Lcom/android/fileexplorer/util/AppUtils;->gotoAppDetail(Landroid/content/Context;)V

    goto :goto_10

    :cond_d
    invoke-static {p1}, Lcom/android/fileexplorer/util/PermissionUtils;->startNewAppPermsManager(Landroid/content/Context;)V

    :goto_10
    return-void
.end method
