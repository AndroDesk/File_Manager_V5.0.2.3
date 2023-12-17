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
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p2, p0, Lcom/android/fileexplorer/event/FileChangeEvent;->path:Ljava/lang/String;

    .line 12
    iput-object p1, p0, Lcom/android/fileexplorer/event/FileChangeEvent;->name:Ljava/lang/String;

    const/4 p1, 0x1

    .line 13
    iput-boolean p1, p0, Lcom/android/fileexplorer/event/FileChangeEvent;->refreshCategory:Z

    .line 14
    iput-boolean p1, p0, Lcom/android/fileexplorer/event/FileChangeEvent;->refreshFile:Z

    .line 15
    iput-boolean p1, p0, Lcom/android/fileexplorer/event/FileChangeEvent;->refreshRecent:Z

    return-void
.end method

.method public constructor <init>(ZZZ)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p1, p0, Lcom/android/fileexplorer/event/FileChangeEvent;->refreshCategory:Z

    .line 3
    iput-boolean p2, p0, Lcom/android/fileexplorer/event/FileChangeEvent;->refreshRecent:Z

    .line 4
    iput-boolean p3, p0, Lcom/android/fileexplorer/event/FileChangeEvent;->refreshFile:Z

    return-void
.end method

.method public constructor <init>(ZZZLjava/lang/String;)V
    .registers 5

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-boolean p1, p0, Lcom/android/fileexplorer/event/FileChangeEvent;->refreshCategory:Z

    .line 18
    iput-boolean p2, p0, Lcom/android/fileexplorer/event/FileChangeEvent;->refreshRecent:Z

    .line 19
    iput-boolean p3, p0, Lcom/android/fileexplorer/event/FileChangeEvent;->refreshFile:Z

    .line 20
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

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-boolean p1, p0, Lcom/android/fileexplorer/event/FileChangeEvent;->refreshCategory:Z

    .line 23
    iput-boolean p2, p0, Lcom/android/fileexplorer/event/FileChangeEvent;->refreshRecent:Z

    .line 24
    iput-boolean p3, p0, Lcom/android/fileexplorer/event/FileChangeEvent;->refreshFile:Z

    .line 25
    iput-object p4, p0, Lcom/android/fileexplorer/event/FileChangeEvent;->pastePaths:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(ZZZZ)V
    .registers 5

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-boolean p1, p0, Lcom/android/fileexplorer/event/FileChangeEvent;->refreshCategory:Z

    .line 7
    iput-boolean p2, p0, Lcom/android/fileexplorer/event/FileChangeEvent;->refreshRecent:Z

    .line 8
    iput-boolean p3, p0, Lcom/android/fileexplorer/event/FileChangeEvent;->refreshFile:Z

    .line 9
    iput-boolean p4, p0, Lcom/android/fileexplorer/event/FileChangeEvent;->fromFolderClick:Z

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 4

    .line 1
    const-string v0, "FileChangeEvent[refreshCategory: "

    .line 3
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    move-result-object v0

    .line 7
    iget-boolean v1, p0, Lcom/android/fileexplorer/event/FileChangeEvent;->refreshCategory:Z

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 12
    const-string v1, ", refreshRecent: "

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    iget-boolean v1, p0, Lcom/android/fileexplorer/event/FileChangeEvent;->refreshRecent:Z

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 22
    const-string v1, ", refreshFile: "

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    iget-boolean v1, p0, Lcom/android/fileexplorer/event/FileChangeEvent;->refreshFile:Z

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 32
    const-string v1, ", path: "

    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    iget-object v1, p0, Lcom/android/fileexplorer/event/FileChangeEvent;->path:Ljava/lang/String;

    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    const-string v1, ", name: "

    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    iget-object v1, p0, Lcom/android/fileexplorer/event/FileChangeEvent;->name:Ljava/lang/String;

    .line 49
    const-string v2, "]"

    .line 51
    invoke-static {v0, v1, v2}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 54
    move-result-object v0

    .line 55
    return-object v0
.end method
