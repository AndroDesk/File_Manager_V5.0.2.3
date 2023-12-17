.class public Lcom/android/fileexplorer/model/BuildDeleteInfo;
.super Ljava/lang/Object;
.source "BuildDeleteInfo.java"


# instance fields
.field private deleteMessage:Ljava/lang/String;

.field private isContainDCIM:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDeleteMessage()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/model/BuildDeleteInfo;->deleteMessage:Ljava/lang/String;

    return-object v0
.end method

.method public isContainDCIM()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/fileexplorer/model/BuildDeleteInfo;->isContainDCIM:Z

    return v0
.end method

.method public setContainDCIM(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/fileexplorer/model/BuildDeleteInfo;->isContainDCIM:Z

    return-void
.end method

.method public setDeleteMessage(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/model/BuildDeleteInfo;->deleteMessage:Ljava/lang/String;

    return-void
.end method
