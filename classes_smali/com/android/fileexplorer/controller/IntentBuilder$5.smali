.class Lcom/android/fileexplorer/controller/IntentBuilder$5;
.super Ljava/lang/Object;
.source "IntentBuilder.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/controller/IntentBuilder;->startNoMime(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Landroid/net/Uri;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic val$activity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

.field public final synthetic val$extension:Ljava/lang/String;

.field public final synthetic val$uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Ljava/lang/String;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/controller/IntentBuilder$5;->val$uri:Landroid/net/Uri;

    .line 3
    iput-object p2, p0, Lcom/android/fileexplorer/controller/IntentBuilder$5;->val$activity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 5
    iput-object p3, p0, Lcom/android/fileexplorer/controller/IntentBuilder$5;->val$extension:Ljava/lang/String;

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    .line 1
    if-eqz p2, :cond_17

    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p2, v0, :cond_14

    .line 6
    const/4 v0, 0x2

    .line 7
    if-eq p2, v0, :cond_11

    .line 9
    const/4 v0, 0x3

    .line 10
    if-eq p2, v0, :cond_e

    .line 12
    const-string v0, "*/*"

    .line 14
    goto :goto_19

    .line 15
    :cond_e
    const-string v0, "image/*"

    .line 17
    goto :goto_19

    .line 18
    :cond_11
    const-string v0, "video/*"

    .line 20
    goto :goto_19

    .line 21
    :cond_14
    const-string v0, "audio/*"

    .line 23
    goto :goto_19

    .line 24
    :cond_17
    const-string v0, "text/plain"

    .line 26
    :goto_19
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 29
    iget-object p1, p0, Lcom/android/fileexplorer/controller/IntentBuilder$5;->val$uri:Landroid/net/Uri;

    .line 31
    const/4 v1, 0x0

    .line 32
    invoke-static {p1, v0, v1}, Lcom/android/fileexplorer/controller/IntentBuilder;->access$100(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 35
    move-result-object p1

    .line 36
    iget-object v0, p0, Lcom/android/fileexplorer/controller/IntentBuilder$5;->val$activity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 38
    invoke-interface {v0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    .line 41
    move-result-object v0

    .line 42
    invoke-static {v0, p1}, Lcom/android/fileexplorer/controller/IntentBuilder;->access$500(Landroid/content/Context;Landroid/content/Intent;)V

    .line 45
    if-nez p2, :cond_40

    .line 47
    iget-object p2, p0, Lcom/android/fileexplorer/controller/IntentBuilder$5;->val$extension:Ljava/lang/String;

    .line 49
    invoke-static {p2}, Lcom/android/fileexplorer/util/WpsSupportUtil;->checkIfWpsSupportFileType(Ljava/lang/String;)Z

    .line 52
    move-result p2

    .line 53
    if-eqz p2, :cond_40

    .line 55
    iget-object p2, p0, Lcom/android/fileexplorer/controller/IntentBuilder$5;->val$activity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 57
    invoke-interface {p2}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    .line 60
    move-result-object p2

    .line 61
    invoke-static {p2, p1}, Lcom/android/fileexplorer/controller/IntentBuilder;->access$600(Landroid/app/Activity;Landroid/content/Intent;)V

    .line 64
    goto :goto_49

    .line 65
    :cond_40
    iget-object p2, p0, Lcom/android/fileexplorer/controller/IntentBuilder$5;->val$activity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 67
    invoke-interface {p2}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    .line 70
    move-result-object p2

    .line 71
    invoke-static {p2, p1}, Lcom/android/fileexplorer/controller/IntentBuilder;->access$700(Landroid/content/Context;Landroid/content/Intent;)V

    .line 74
    :goto_49
    return-void
.end method
