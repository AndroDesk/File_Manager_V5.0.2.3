.class public Lcom/android/fileexplorer/model/BuildDeleteInfo;
.super Ljava/lang/Object;
.source "BuildDeleteInfo.java"


# instance fields
.field private deleteMessage:Ljava/lang/String;

.field private isContainDCIM:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDeleteMessage()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/model/BuildDeleteInfo;->deleteMessage:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public isContainDCIM()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/android/fileexplorer/model/BuildDeleteInfo;->isContainDCIM:Z

    .line 3
    return v0
.end method

.method public setContainDCIM(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/android/fileexplorer/model/BuildDeleteInfo;->isContainDCIM:Z

    .line 3
    return-void
.end method

.method public setDeleteMessage(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/model/BuildDeleteInfo;->deleteMessage:Ljava/lang/String;

    .line 3
    return-void
.end method
