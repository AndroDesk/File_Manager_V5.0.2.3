.class public interface abstract Lcom/miui/optimizecenter/dirinfo/IDirInfoQueryManager;
.super Ljava/lang/Object;
.source "IDirInfoQueryManager.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/optimizecenter/dirinfo/IDirInfoQueryManager$Stub;,
        Lcom/miui/optimizecenter/dirinfo/IDirInfoQueryManager$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.miui.optimizecenter.dirinfo.IDirInfoQueryManager"


# virtual methods
.method public abstract queryDirInfo(Ljava/util/List;Lcom/miui/optimizecenter/dirinfo/IDirInfoQueryCallBack;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/miui/optimizecenter/dirinfo/IDirInfoQueryCallBack;",
            ")V"
        }
    .end annotation
.end method
