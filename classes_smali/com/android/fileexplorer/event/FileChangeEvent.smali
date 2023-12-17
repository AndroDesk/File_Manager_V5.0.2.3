.class public Lcom/android/fileexplorer/event/FileChangeEvent;
.super Ljava/lang/Object;
.source "FileChangeEvent.java"


# instance fields
.field public fromFolderClick:Z

.field public name:Ljava/lang/String;

.field public pastePaths:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public path:Ljava/lang/String;

.field public refreshCategory:Z

.field public refreshFile:Z

.field public refreshRecent:Z

.field public renamePath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/fileexplorer/event/FileChangeEvent;->path:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/fileexplorer/event/FileChangeEvent;->name:Ljava/lang/String;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/fileexplorer/event/FileChangeEvent;->refreshCategory:Z

    iput-boolean p1, p0, Lcom/android/fileexplorer/event/FileChangeEvent;->refreshFile:Z

    iput-boolean p1, p0, Lcom/android/fileexplorer/event/FileChangeEvent;->refreshRecent:Z

    return-void
.end method

.method public constructor <init>(ZZZ)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/android/fileexplorer/event/FileChangeEvent;->refreshCategory:Z

    iput-boolean p2, p0, Lcom/android/fileexplorer/event/FileChangeEvent;->refreshRecent:Z

    iput-boolean p3, p0, Lcom/android/fileexplorer/event/FileChangeEvent;->refreshFile:Z

    return-void
.end method

.method public constructor <init>(ZZZLjava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/android/fileexplorer/event/FileChangeEvent;->refreshCategory:Z

    iput-boolean p2, p0, Lcom/android/fileexplorer/event/FileChangeEvent;->refreshRecent:Z

    iput-boolean p3, p0, Lcom/android/fileexplorer/event/FileChangeEvent;->refreshFile:Z

    iput-object p4, p0, Lcom/android/fileexplorer/event/FileChangeEvent;->renamePath:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ZZZLjava/util/ArrayList;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZZ",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/android/fileexplorer/event/FileChangeEvent;->refreshCategory:Z

    iput-boolean p2, p0, Lcom/android/fileexplorer/event/FileChangeEvent;->refreshRecent:Z

    iput-boolean p3, p0, Lcom/android/fileexplorer/event/FileChangeEvent;->refreshFile:Z

    iput-object p4, p0, Lcom/android/fileexplorer/event/FileChangeEvent;->pastePaths:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(ZZZZ)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/android/fileexplorer/event/FileChangeEvent;->refreshCategory:Z

    iput-boolean p2, p0, Lcom/android/fileexplorer/event/FileChangeEvent;->refreshRecent:Z

    iput-boolean p3, p0, Lcom/android/fileexplorer/event/FileChangeEvent;->refreshFile:Z

    iput-boolean p4, p0, Lcom/android/fileexplorer/event/FileChangeEvent;->fromFolderClick:Z

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 4

    const-string v0, "FileChangeEvent[refreshCategory: "

    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/fileexplorer/event/FileChangeEvent;->refreshCategory:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", refreshRecent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/fileexplorer/event/FileChangeEvent;->refreshRecent:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", refreshFile: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/fileexplorer/event/FileChangeEvent;->refreshFile:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", path: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/fileexplorer/event/FileChangeEvent;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/fileexplorer/event/FileChangeEvent;->name:Ljava/lang/String;

    const-string v2, "]"

    invoke-static {v0, v1, v2}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
