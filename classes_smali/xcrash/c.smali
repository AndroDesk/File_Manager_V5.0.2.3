.class public final Lxcrash/c;
.super Ljava/lang/Object;
.source "AnrHandler.java"


# static fields
.field public static final a:Lxcrash/c;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lxcrash/c;

    .line 3
    invoke-direct {v0}, Lxcrash/c;-><init>()V

    .line 6
    sput-object v0, Lxcrash/c;->a:Lxcrash/c;

    .line 8
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/Date;

    .line 6
    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 9
    const-string v0, "^-----\\spid\\s(\\d+)\\sat\\s(.*)\\s-----$"

    .line 11
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 14
    const-string v0, "^Cmd\\sline:\\s+(.*)$"

    .line 16
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 19
    return-void
.end method
