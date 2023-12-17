.class Lcom/android/fileexplorer/mtp/RootInfo;
.super Ljava/lang/Object;
.source "RootInfo.java"


# instance fields
.field private authority:Ljava/lang/String;

.field private availableBytes:J

.field public documentId:Ljava/lang/String;

.field private flags:I

.field private icon:I

.field private mimeTypes:Ljava/lang/String;

.field private rootId:Ljava/lang/String;

.field private summary:Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/database/Cursor;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-direct {p0, p1, p2}, Lcom/android/fileexplorer/mtp/RootInfo;->fromRootsCursor(Ljava/lang/String;Landroid/database/Cursor;)V

    .line 7
    return-void
.end method

.method private fromRootsCursor(Ljava/lang/String;Landroid/database/Cursor;)V
    .registers 5

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/mtp/RootInfo;->authority:Ljava/lang/String;

    .line 3
    const-string p1, "root_id"

    .line 5
    invoke-static {p2, p1}, Lcom/android/fileexplorer/mtp/CursorHelper;->getCursorString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    move-result-object p1

    .line 9
    iput-object p1, p0, Lcom/android/fileexplorer/mtp/RootInfo;->rootId:Ljava/lang/String;

    .line 11
    const-string p1, "flags"

    .line 13
    invoke-static {p2, p1}, Lcom/android/fileexplorer/mtp/CursorHelper;->getCursorInt(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 16
    move-result p1

    .line 17
    iput p1, p0, Lcom/android/fileexplorer/mtp/RootInfo;->flags:I

    .line 19
    const-string p1, "icon"

    .line 21
    invoke-static {p2, p1}, Lcom/android/fileexplorer/mtp/CursorHelper;->getCursorInt(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 24
    move-result p1

    .line 25
    iput p1, p0, Lcom/android/fileexplorer/mtp/RootInfo;->icon:I

    .line 27
    const-string p1, "title"

    .line 29
    invoke-static {p2, p1}, Lcom/android/fileexplorer/mtp/CursorHelper;->getCursorString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    .line 32
    move-result-object p1

    .line 33
    iput-object p1, p0, Lcom/android/fileexplorer/mtp/RootInfo;->title:Ljava/lang/String;

    .line 35
    const-string p1, "summary"

    .line 37
    invoke-static {p2, p1}, Lcom/android/fileexplorer/mtp/CursorHelper;->getCursorString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    .line 40
    move-result-object p1

    .line 41
    iput-object p1, p0, Lcom/android/fileexplorer/mtp/RootInfo;->summary:Ljava/lang/String;

    .line 43
    const-string p1, "document_id"

    .line 45
    invoke-static {p2, p1}, Lcom/android/fileexplorer/mtp/CursorHelper;->getCursorString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    .line 48
    move-result-object p1

    .line 49
    iput-object p1, p0, Lcom/android/fileexplorer/mtp/RootInfo;->documentId:Ljava/lang/String;

    .line 51
    const-string p1, "available_bytes"

    .line 53
    invoke-static {p2, p1}, Lcom/android/fileexplorer/mtp/CursorHelper;->getCursorLong(Landroid/database/Cursor;Ljava/lang/String;)J

    .line 56
    move-result-wide v0

    .line 57
    iput-wide v0, p0, Lcom/android/fileexplorer/mtp/RootInfo;->availableBytes:J

    .line 59
    const-string p1, "mime_types"

    .line 61
    invoke-static {p2, p1}, Lcom/android/fileexplorer/mtp/CursorHelper;->getCursorString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    .line 64
    move-result-object p1

    .line 65
    iput-object p1, p0, Lcom/android/fileexplorer/mtp/RootInfo;->mimeTypes:Ljava/lang/String;

    .line 67
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 4

    .line 1
    const-string v0, "authority:"

    .line 3
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/android/fileexplorer/mtp/RootInfo;->authority:Ljava/lang/String;

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    const-string v1, " rootId:"

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    iget-object v1, p0, Lcom/android/fileexplorer/mtp/RootInfo;->rootId:Ljava/lang/String;

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    const-string v1, " flags:"

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    iget v1, p0, Lcom/android/fileexplorer/mtp/RootInfo;->flags:I

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 32
    const-string v1, " icon:"

    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    iget v1, p0, Lcom/android/fileexplorer/mtp/RootInfo;->icon:I

    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 42
    const-string v1, " title:"

    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    iget-object v1, p0, Lcom/android/fileexplorer/mtp/RootInfo;->title:Ljava/lang/String;

    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    const-string v1, " summary:"

    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    iget-object v1, p0, Lcom/android/fileexplorer/mtp/RootInfo;->summary:Ljava/lang/String;

    .line 59
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    const-string v1, " documentId:"

    .line 64
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    iget-object v1, p0, Lcom/android/fileexplorer/mtp/RootInfo;->documentId:Ljava/lang/String;

    .line 69
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    const-string v1, " availableBytes:"

    .line 74
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    iget-wide v1, p0, Lcom/android/fileexplorer/mtp/RootInfo;->availableBytes:J

    .line 79
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 82
    const-string v1, " mimeTypes："

    .line 84
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    iget-object v1, p0, Lcom/android/fileexplorer/mtp/RootInfo;->mimeTypes:Ljava/lang/String;

    .line 89
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 95
    move-result-object v0

    .line 96
    return-object v0
.end method
