.class Lcom/android/fileexplorer/provider/SearchExportProvider$1Wrapper;
.super Landroid/database/CursorWrapper;
.source "SearchExportProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/provider/SearchExportProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Wrapper"
.end annotation


# instance fields
.field private final SUGGENTION_SCHEME:Ljava/lang/String;

.field public final synthetic this$0:Lcom/android/fileexplorer/provider/SearchExportProvider;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/provider/SearchExportProvider;Landroid/database/Cursor;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/provider/SearchExportProvider$1Wrapper;->this$0:Lcom/android/fileexplorer/provider/SearchExportProvider;

    .line 3
    invoke-direct {p0, p2}, Landroid/database/CursorWrapper;-><init>(Landroid/database/Cursor;)V

    .line 6
    const-string p1, "content://"

    .line 8
    iput-object p1, p0, Lcom/android/fileexplorer/provider/SearchExportProvider$1Wrapper;->SUGGENTION_SCHEME:Ljava/lang/String;

    .line 10
    return-void
.end method


# virtual methods
.method public getString(I)Ljava/lang/String;
    .registers 9

    .line 1
    const/4 v0, -0x1

    .line 2
    if-eq p1, v0, :cond_50

    .line 4
    const-string v1, "suggest_text_2"

    .line 6
    invoke-virtual {p0, v1}, Landroid/database/CursorWrapper;->getColumnIndex(Ljava/lang/String;)I

    .line 9
    move-result v1

    .line 10
    if-ne p1, v1, :cond_50

    .line 12
    invoke-super {p0, p1}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    .line 15
    move-result-object p1

    .line 16
    const-string v0, "search_suggest_internal_size"

    .line 18
    invoke-virtual {p0, v0}, Landroid/database/CursorWrapper;->getColumnIndex(Ljava/lang/String;)I

    .line 21
    move-result v0

    .line 22
    const-string v1, "search_suggest_internal_date"

    .line 24
    invoke-virtual {p0, v1}, Landroid/database/CursorWrapper;->getColumnIndex(Ljava/lang/String;)I

    .line 27
    move-result v1

    .line 28
    const-string v2, "search_suggest_internal_tag"

    .line 30
    invoke-virtual {p0, v2}, Landroid/database/CursorWrapper;->getColumnIndex(Ljava/lang/String;)I

    .line 33
    move-result v2

    .line 34
    invoke-super {p0, v0}, Landroid/database/CursorWrapper;->getLong(I)J

    .line 37
    move-result-wide v3

    .line 38
    invoke-super {p0, v1}, Landroid/database/CursorWrapper;->getLong(I)J

    .line 41
    move-result-wide v0

    .line 42
    invoke-super {p0, v2}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    .line 45
    move-result-object v2

    .line 46
    iget-object v5, p0, Lcom/android/fileexplorer/provider/SearchExportProvider$1Wrapper;->this$0:Lcom/android/fileexplorer/provider/SearchExportProvider;

    .line 48
    const/4 v6, 0x0

    .line 49
    invoke-static {v0, v1, v6}, Lcom/android/fileexplorer/model/DateUtils;->formatFileTime(JZ)Ljava/lang/String;

    .line 52
    move-result-object v0

    .line 53
    invoke-static {v3, v4}, Lcom/android/fileexplorer/util/MiuiFormatter;->formatFileSize(J)Ljava/lang/String;

    .line 56
    move-result-object v1

    .line 57
    invoke-static {v2}, Lcom/android/fileexplorer/apptag/FileUtils;->getNameByLocale(Ljava/lang/String;)Ljava/lang/String;

    .line 60
    move-result-object v2

    .line 61
    const/4 v3, 0x1

    .line 62
    new-array v3, v3, [Ljava/lang/Object;

    .line 64
    iget-object v4, p0, Lcom/android/fileexplorer/provider/SearchExportProvider$1Wrapper;->this$0:Lcom/android/fileexplorer/provider/SearchExportProvider;

    .line 66
    invoke-static {v4, p1}, Lcom/android/fileexplorer/provider/SearchExportProvider;->access$000(Lcom/android/fileexplorer/provider/SearchExportProvider;Ljava/lang/String;)Ljava/lang/String;

    .line 69
    move-result-object p1

    .line 70
    aput-object p1, v3, v6

    .line 72
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 75
    move-result-object p1

    .line 76
    invoke-static {v5, v0, v1, p1}, Lcom/android/fileexplorer/provider/SearchExportProvider;->access$100(Lcom/android/fileexplorer/provider/SearchExportProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 79
    move-result-object p1

    .line 80
    return-object p1

    .line 81
    :cond_50
    if-eq p1, v0, :cond_65

    .line 83
    const-string v1, "suggest_icon_1"

    .line 85
    invoke-virtual {p0, v1}, Landroid/database/CursorWrapper;->getColumnIndex(Ljava/lang/String;)I

    .line 88
    move-result v1

    .line 89
    if-ne p1, v1, :cond_65

    .line 91
    invoke-super {p0, p1}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    .line 94
    move-result-object p1

    .line 95
    iget-object v0, p0, Lcom/android/fileexplorer/provider/SearchExportProvider$1Wrapper;->this$0:Lcom/android/fileexplorer/provider/SearchExportProvider;

    .line 97
    invoke-static {v0, p1}, Lcom/android/fileexplorer/provider/SearchExportProvider;->access$200(Lcom/android/fileexplorer/provider/SearchExportProvider;Ljava/lang/String;)Ljava/lang/String;

    .line 100
    move-result-object p1

    .line 101
    return-object p1

    .line 102
    :cond_65
    if-eq p1, v0, :cond_81

    .line 104
    const-string v0, "suggest_intent_data"

    .line 106
    invoke-virtual {p0, v0}, Landroid/database/CursorWrapper;->getColumnIndex(Ljava/lang/String;)I

    .line 109
    move-result v0

    .line 110
    if-ne p1, v0, :cond_81

    .line 112
    const-string v0, "content://"

    .line 114
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    move-result-object v0

    .line 118
    invoke-super {p0, p1}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    .line 121
    move-result-object p1

    .line 122
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 128
    move-result-object p1

    .line 129
    return-object p1

    .line 130
    :cond_81
    invoke-super {p0, p1}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    .line 133
    move-result-object p1

    .line 134
    return-object p1
.end method
