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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lcom/android/fileexplorer/controller/IntentBuilder$5;->val$uri:Landroid/net/Uri;

    iput-object p2, p0, Lcom/android/fileexplorer/controller/IntentBuilder$5;->val$activity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    iput-object p3, p0, Lcom/android/fileexplorer/controller/IntentBuilder$5;->val$extension:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    if-eqz p2, :cond_17

    const/4 v0, 0x1

    if-eq p2, v0, :cond_14

    const/4 v0, 0x2

    if-eq p2, v0, :cond_11

    const/4 v0, 0x3

    if-eq p2, v0, :cond_e

    const-string v0, "*/*"

    goto :goto_19

    :cond_e
    const-string v0, "image/*"

    goto :goto_19

    :cond_11
    const-string v0, "video/*"

    goto :goto_19

    :cond_14
    const-string v0, "audio/*"

    goto :goto_19

    :cond_17
    const-string v0, "text/plain"

    :goto_19
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object p1, p0, Lcom/android/fileexplorer/controller/IntentBuilder$5;->val$uri:Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/android/fileexplorer/controller/IntentBuilder;->access$100(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object p1

    iget-object v0, p0, Lcom/android/fileexplorer/controller/IntentBuilder$5;->val$activity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-interface {v0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/fileexplorer/controller/IntentBuilder;->access$500(Landroid/content/Context;Landroid/content/Intent;)V

    if-nez p2, :cond_40

    iget-object p2, p0, Lcom/android/fileexplorer/controller/IntentBuilder$5;->val$extension:Ljava/lang/String;

    invoke-static {p2}, Lcom/android/fileexplorer/util/WpsSupportUtil;->checkIfWpsSupportFileType(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_40

    iget-object p2, p0, Lcom/android/fileexplorer/controller/IntentBuilder$5;->val$activity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-interface {p2}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/android/fileexplorer/controller/IntentBuilder;->access$600(Landroid/app/Activity;Landroid/content/Intent;)V

    goto :goto_49

    :cond_40
    iget-object p2, p0, Lcom/android/fileexplorer/controller/IntentBuilder$5;->val$activity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-interface {p2}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/android/fileexplorer/controller/IntentBuilder;->access$700(Landroid/content/Context;Landroid/content/Intent;)V

    :goto_49
    return-void
.end method
