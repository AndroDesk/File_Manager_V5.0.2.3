.class public interface abstract Lcom/android/fileexplorer/service/IDirParse;
.super Ljava/lang/Object;
.source "IDirParse.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/fileexplorer/service/IDirParse$Stub;,
        Lcom/android/fileexplorer/service/IDirParse$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.android.fileexplorer.service.IDirParse"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method


# virtual methods
.method public abstract queryDirInfo(Ljava/util/List;Lcom/android/fileexplorer/service/IQueryCallBack;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/fileexplorer/service/IQueryCallBack;",
            ")V"
        }
    .end annotation
.end method
