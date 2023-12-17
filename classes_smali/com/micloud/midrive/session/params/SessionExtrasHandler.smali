.class public interface abstract Lcom/micloud/midrive/session/params/SessionExtrasHandler;
.super Ljava/lang/Object;
.source "SessionExtrasHandler.java"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method


# virtual methods
.method public abstract getBooleanExtra(Landroid/content/Context;Ljava/lang/String;Z)Z
.end method

.method public abstract getIntExtra(Landroid/content/Context;Ljava/lang/String;I)I
.end method

.method public abstract getLongExtra(Landroid/content/Context;Ljava/lang/String;J)J
.end method

.method public abstract getStringExtra(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract putBooleanExtra(Landroid/content/Context;Ljava/lang/String;Z)V
.end method

.method public abstract putIntExtra(Landroid/content/Context;Ljava/lang/String;I)V
.end method

.method public abstract putLongExtra(Landroid/content/Context;Ljava/lang/String;J)V
.end method

.method public abstract putStringExtra(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
.end method
