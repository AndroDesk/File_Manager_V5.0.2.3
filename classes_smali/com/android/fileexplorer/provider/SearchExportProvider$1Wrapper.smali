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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/provider/SearchExportProvider;Landroid/database/Cursor;)V
    .registers 3

    iput-object p1, p0, Lcom/android/fileexplorer/provider/SearchExportProvider$1Wrapper;->this$0:Lcom/android/fileexplorer/provider/SearchExportProvider;

    invoke-direct {p0, p2}, Landroid/database/CursorWrapper;-><init>(Landroid/database/Cursor;)V

    const-string p1, "content://"

    iput-object p1, p0, Lcom/android/fileexplorer/provider/SearchExportProvider$1Wrapper;->SUGGENTION_SCHEME:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getString(I)Ljava/lang/String;
    .registers 9

    const/4 v0, -0x1

    if-eq p1, v0, :cond_50

    const-string v1, "suggest_text_2"

    invoke-virtual {p0, v1}, Landroid/database/CursorWrapper;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    if-ne p1, v1, :cond_50

    invoke-super {p0, p1}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "search_suggest_internal_size"

    invoke-virtual {p0, v0}, Landroid/database/CursorWrapper;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    const-string v1, "search_suggest_internal_date"

    invoke-virtual {p0, v1}, Landroid/database/CursorWrapper;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    const-string v2, "search_suggest_internal_tag"

    invoke-virtual {p0, v2}, Landroid/database/CursorWrapper;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-super {p0, v0}, Landroid/database/CursorWrapper;->getLong(I)J

    move-result-wide v3

    invoke-super {p0, v1}, Landroid/database/CursorWrapper;->getLong(I)J

    move-result-wide v0

    invoke-super {p0, v2}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v5, p0, Lcom/android/fileexplorer/provider/SearchExportProvider$1Wrapper;->this$0:Lcom/android/fileexplorer/provider/SearchExportProvider;

    const/4 v6, 0x0

    invoke-static {v0, v1, v6}, Lcom/android/fileexplorer/model/DateUtils;->formatFileTime(JZ)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v4}, Lcom/android/fileexplorer/util/MiuiFormatter;->formatFileSize(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2}, Lcom/android/fileexplorer/apptag/FileUtils;->getNameByLocale(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/fileexplorer/provider/SearchExportProvider$1Wrapper;->this$0:Lcom/android/fileexplorer/provider/SearchExportProvider;

    invoke-static {v4, p1}, Lcom/android/fileexplorer/provider/SearchExportProvider;->access$000(Lcom/android/fileexplorer/provider/SearchExportProvider;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, v0, v1, p1}, Lcom/android/fileexplorer/provider/SearchExportProvider;->access$100(Lcom/android/fileexplorer/provider/SearchExportProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_50
    if-eq p1, v0, :cond_65

    const-string v1, "suggest_icon_1"

    invoke-virtual {p0, v1}, Landroid/database/CursorWrapper;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    if-ne p1, v1, :cond_65

    invoke-super {p0, p1}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/android/fileexplorer/provider/SearchExportProvider$1Wrapper;->this$0:Lcom/android/fileexplorer/provider/SearchExportProvider;

    invoke-static {v0, p1}, Lcom/android/fileexplorer/provider/SearchExportProvider;->access$200(Lcom/android/fileexplorer/provider/SearchExportProvider;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_65
    if-eq p1, v0, :cond_81

    const-string v0, "suggest_intent_data"

    invoke-virtual {p0, v0}, Landroid/database/CursorWrapper;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-ne p1, v0, :cond_81

    const-string v0, "content://"

    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0, p1}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_81
    invoke-super {p0, p1}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
