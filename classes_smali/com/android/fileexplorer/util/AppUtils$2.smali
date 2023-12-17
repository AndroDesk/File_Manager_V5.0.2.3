.class Lcom/android/fileexplorer/util/AppUtils$2;
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
    iput-object p1, p0, Lcom/android/fileexplorer/util/AppUtils$2;->val$activity:Landroid/app/Activity;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 1
    iget-object p1, p0, Lcom/android/fileexplorer/util/AppUtils$2;->val$activity:Landroid/app/Activity;

    .line 3
    if-eqz p1, :cond_7

    .line 5
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 8
    :cond_7
    const/4 p1, 0x0

    .line 9
    invoke-static {p1}, Ljava/lang/System;->exit(I)V

    .line 12
    return-void
.end method
