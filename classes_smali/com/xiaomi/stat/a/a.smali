.class public Lcom/xiaomi/stat/a/a;
.super Landroid/database/sqlite/SQLiteOpenHelper;


# static fields
.field private static final a:Ljava/lang/String; = "mistat_ev"

.field private static final b:I

.field private static final c:Ljava/lang/String; = "CREATE TABLE events (_id INTEGER PRIMARY KEY AUTOINCREMENT,e TEXT,eg TEXT,tp TEXT,ps TEXT,ts INTEGER,sub TEXT,is_am INTEGER,priority INTEGER)"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x92d97

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/xiaomi/stat/a/a;->b:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    const-string v0, "mistat_ev"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3

    const-string v0, "CREATE TABLE events (_id INTEGER PRIMARY KEY AUTOINCREMENT,e TEXT,eg TEXT,tp TEXT,ps TEXT,ts INTEGER,sub TEXT,is_am INTEGER,priority INTEGER)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 4

    return-void
.end method
