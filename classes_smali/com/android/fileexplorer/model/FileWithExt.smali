.class public Lcom/android/fileexplorer/model/FileWithExt;
.super Ljava/lang/Object;
.source "FileWithExt.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private extension:Ljava/lang/String;

.field public filePath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/fileexplorer/model/FileWithExt;->filePath:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/fileexplorer/model/FileWithExt;->extension:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getExtension()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/model/FileWithExt;->extension:Ljava/lang/String;

    return-object v0
.end method

.method public getFilePath()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/model/FileWithExt;->filePath:Ljava/lang/String;

    return-object v0
.end method
