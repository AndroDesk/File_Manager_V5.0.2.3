.class public final Lorg/jaudiotagger/logging/LogFormatter;
.super Ljava/util/logging/Formatter;
.source "LogFormatter.java"


# static fields
.field public static final ACTION_PERFORMED:Ljava/lang/String; = "actionPerformed"

.field public static final IDENT:Ljava/lang/String; = "$Id: LogFormatter.java 836 2009-11-12 15:44:07Z paultaylor $"


# instance fields
.field private final date:Ljava/util/Date;

.field private isObsfucated:Z

.field private final lineSeparator:Ljava/lang/String;

.field private final sfDateOut:Ljava/text/SimpleDateFormat;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/util/logging/Formatter;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lorg/jaudiotagger/logging/LogFormatter;->isObsfucated:Z

    .line 7
    new-instance v0, Lsun/security/action/GetPropertyAction;

    .line 9
    const-string v1, "line.separator"

    .line 11
    invoke-direct {v0, v1}, Lsun/security/action/GetPropertyAction;-><init>(Ljava/lang/String;)V

    .line 14
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Ljava/lang/String;

    .line 20
    iput-object v0, p0, Lorg/jaudiotagger/logging/LogFormatter;->lineSeparator:Ljava/lang/String;

    .line 22
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 24
    const-string v1, "dd/MM/yyyy HH.mm.ss:"

    .line 26
    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 29
    iput-object v0, p0, Lorg/jaudiotagger/logging/LogFormatter;->sfDateOut:Ljava/text/SimpleDateFormat;

    .line 31
    new-instance v0, Ljava/util/Date;

    .line 33
    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 36
    iput-object v0, p0, Lorg/jaudiotagger/logging/LogFormatter;->date:Ljava/util/Date;

    .line 38
    return-void
.end method


# virtual methods
.method public final format(Ljava/util/logging/LogRecord;)Ljava/lang/String;
    .registers 6

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 6
    iget-object v1, p0, Lorg/jaudiotagger/logging/LogFormatter;->date:Ljava/util/Date;

    .line 8
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getMillis()J

    .line 11
    move-result-wide v2

    .line 12
    invoke-virtual {v1, v2, v3}, Ljava/util/Date;->setTime(J)V

    .line 15
    iget-object v1, p0, Lorg/jaudiotagger/logging/LogFormatter;->sfDateOut:Ljava/text/SimpleDateFormat;

    .line 17
    iget-object v2, p0, Lorg/jaudiotagger/logging/LogFormatter;->date:Ljava/util/Date;

    .line 19
    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 26
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getSourceClassName()Ljava/lang/String;

    .line 29
    move-result-object v1

    .line 30
    const-string v2, ":"

    .line 32
    if-eqz v1, :cond_3c

    .line 34
    new-instance v1, Ljava/lang/StringBuilder;

    .line 36
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 39
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getSourceClassName()Ljava/lang/String;

    .line 42
    move-result-object v3

    .line 43
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getSourceMethodName()Ljava/lang/String;

    .line 52
    move-result-object v3

    .line 53
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    move-result-object v1

    .line 60
    goto :goto_4f

    .line 61
    :cond_3c
    new-instance v1, Ljava/lang/StringBuilder;

    .line 63
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 66
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getLoggerName()Ljava/lang/String;

    .line 69
    move-result-object v3

    .line 70
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    move-result-object v1

    .line 80
    :goto_4f
    if-eqz v1, :cond_57

    .line 82
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 85
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 88
    :cond_57
    invoke-virtual {p0, p1}, Ljava/util/logging/Formatter;->formatMessage(Ljava/util/logging/LogRecord;)Ljava/lang/String;

    .line 91
    move-result-object v1

    .line 92
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getLevel()Ljava/util/logging/Level;

    .line 95
    move-result-object v2

    .line 96
    invoke-virtual {v2}, Ljava/util/logging/Level;->getLocalizedName()Ljava/lang/String;

    .line 99
    move-result-object v2

    .line 100
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 103
    const-string v2, ": "

    .line 105
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 108
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 111
    iget-object v1, p0, Lorg/jaudiotagger/logging/LogFormatter;->lineSeparator:Ljava/lang/String;

    .line 113
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 116
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getThrown()Ljava/lang/Throwable;

    .line 119
    move-result-object v1

    .line 120
    if-eqz v1, :cond_94

    .line 122
    :try_start_79
    new-instance v1, Ljava/io/StringWriter;

    .line 124
    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 127
    new-instance v2, Ljava/io/PrintWriter;

    .line 129
    invoke-direct {v2, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 132
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getThrown()Ljava/lang/Throwable;

    .line 135
    move-result-object p1

    .line 136
    invoke-virtual {p1, v2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 139
    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V

    .line 142
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    .line 145
    move-result-object p1

    .line 146
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_94
    .catch Ljava/lang/Exception; {:try_start_79 .. :try_end_94} :catch_94

    .line 149
    :catch_94
    :cond_94
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 152
    move-result-object p1

    .line 153
    return-object p1
.end method
