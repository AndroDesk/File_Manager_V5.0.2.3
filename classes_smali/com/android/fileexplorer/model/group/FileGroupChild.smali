.class public Lcom/android/fileexplorer/model/group/FileGroupChild;
.super Lcom/android/fileexplorer/model/group/FileGroupData;
.source "FileGroupChild.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/android/fileexplorer/model/group/FileGroupData<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public mParent:Lcom/android/fileexplorer/model/group/FileGroupParent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/fileexplorer/model/group/FileGroupParent<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/model/group/FileGroupData;-><init>()V

    .line 4
    return-void
.end method
