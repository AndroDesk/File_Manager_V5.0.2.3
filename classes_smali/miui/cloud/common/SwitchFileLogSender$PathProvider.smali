.class public interface abstract Lmiui/cloud/common/SwitchFileLogSender$PathProvider;
.super Ljava/lang/Object;
.source "SwitchFileLogSender.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/cloud/common/SwitchFileLogSender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PathProvider"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method


# virtual methods
.method public abstract getPath(Landroid/content/Context;)Ljava/io/File;
.end method
