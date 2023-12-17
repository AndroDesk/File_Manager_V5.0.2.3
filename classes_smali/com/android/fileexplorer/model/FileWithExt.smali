.class public Lcom/android/fileexplorer/model/FileWithExt;
.super Ljava/lang/Object;
.source "FileWithExt.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private extension:Ljava/lang/String;

.field public filePath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/fileexplorer/model/FileWithExt;->filePath:Ljava/lang/String;

    .line 6
    iput-object p2, p0, Lcom/android/fileexplorer/model/FileWithExt;->extension:Ljava/lang/String;

    .line 8
    return-void
.end method


# virtual methods
.method public getExtension()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/model/FileWithExt;->extension:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getFilePath()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/model/FileWithExt;->filePath:Ljava/lang/String;

    .line 3
    return-object v0
.end method
